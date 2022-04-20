import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_resto/core/utils/app_state.dart' as s;
import 'package:order_resto/core/utils/colors.dart';
import 'package:order_resto/core/utils/constants.dart';
import 'package:order_resto/core/utils/extension.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/presentation/bloc/app/login_info.dart';
import 'package:order_resto/features/home/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:remixicon/remixicon.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late DashboardBloc _dashboardBloc;

  final _scrollController = ScrollController();

  final TextEditingController _search = TextEditingController();
  Timer? debounce;

  void handleSearch(String value) {
    if (debounce != null) debounce!.cancel();
    setState(() {
      debounce = Timer(const Duration(milliseconds: 500), () {
        _dashboardBloc.add(DashboardLoadDataEvent(query: value, idle: true));
      });
    });
  }

  @override
  void initState() {
    _dashboardBloc = context.read<DashboardBloc>();
    // if (context.read<LoginInfo>().loggedIn) {
    _dashboardBloc.add(const DashboardLoadDataEvent());
    // }
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _search.dispose();
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      if (_search.text.isNotEmpty) {
        return _dashboardBloc.add(DashboardLoadDataEvent(query: _search.text));
      }
      _dashboardBloc.add(const DashboardLoadDataEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll == (maxScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Dashboard', style: textSemiBold.copyWith(fontSize: 14)),
            actions: [
              IconButton(
                onPressed: () {
                  context.read<LoginInfo>().signout();
                },
                icon: const Icon(Icons.logout),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _search,
                  cursorColor: AppColor.textColor,
                  style: text.copyWith(fontSize: 14),
                  onChanged: (query) {
                    setState(() {
                      handleSearch(query);
                    });
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(8, 11, 8, 11),
                    hintText: 'Cari',
                    hintStyle: textMedium,
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: _search.text.isNotEmpty
                          ? () {
                              setState(() {
                                _search.clear();
                                _dashboardBloc.add(DashboardClearDataEvent());
                              });
                            }
                          : null,
                      icon: Icon(
                        _search.text.isNotEmpty ? Remix.close_line : Remix.search_2_line,
                        color: AppColor.accentColor,
                        size: 21,
                      ),
                    ),
                    suffixIconColor: AppColor.accentColor,
                    fillColor: AppColor.textColor,
                    focusColor: AppColor.textColor,
                    hoverColor: AppColor.textColor,
                  ),
                  maxLines: 1,
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: BlocBuilder<DashboardBloc, DashboardState>(
                    builder: (context, state) {
                      switch (state.status) {
                        case s.AppState.failure:
                          return const Center(
                            child: Text('Something went wrong'),
                          );

                        case s.AppState.success:
                          if (state.foods!.isEmpty) {
                            return const Center(child: Text('no foods!'));
                          }
                          return ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return index >= state.foods!.length
                                  ? const BottomLoader()
                                  : FoodListItem(food: state.foods![index]);
                            },
                            itemCount: state.hasReachedMax! ? state.foods!.length : state.foods!.length + 1,
                            controller: _scrollController,
                          );
                        default:
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomLoader extends StatelessWidget {
  const BottomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(strokeWidth: 1.5),
      ),
    );
  }
}

class FoodListItem extends StatelessWidget {
  const FoodListItem({Key? key, required this.food}) : super(key: key);
  final FoodEntity food;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        onTap: () {
          showDialog(context: context, builder: (_) => _PopupPhoto(food: food));
        },
        tileColor: Colors.white,
        leading: food.gambar == null
            ? Image.asset(
                'assets/default_food.jpg',
                height: 50,
                fit: BoxFit.cover,
              )
            : CachedNetworkImage(
                imageUrl: AppString.image(food.gambar!),
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
        title: Text(food.namaBarang),
        isThreeLine: true,
        subtitle: Text(
          food.grup.isNotEmpty ? food.grup.split('-').last.capitalize() : '',
        ),
        dense: true,
      ),
    );
  }
}

class _PopupPhoto extends StatelessWidget {
  const _PopupPhoto({Key? key, required this.food}) : super(key: key);
  final FoodEntity food;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(food.namaBarang, style: textSemiBold.copyWith(fontSize: 14)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          food.gambar == null
              ? Image.asset(
                  'assets/default_food.jpg',
                  height: 200,
                  fit: BoxFit.cover,
                )
              : CachedNetworkImage(
                  imageUrl: AppString.image(food.gambar!),
                  width: 200,
                  fit: BoxFit.cover,
                ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () async {
              var _picker = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['jpg', 'jpeg', 'png'],
              );
              if (_picker != null) {
                context.read<DashboardBloc>().add(DashboardUploadImageEvent(_picker.files.single, food.idtab));
                Navigator.pop(context);
              }
            },
            child: const Text('Upload foto baru'),
          ),
        ],
      ),
    );
  }
}
