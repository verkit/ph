import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_resto/core/utils/app_state.dart' as s;
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/presentation/bloc/app/app_bloc.dart';
import 'package:order_resto/features/home/presentation/bloc/dashboard/dashboard_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late AppBloc _appBloc;
  late DashboardBloc _dashboardBloc;

  final _scrollController = ScrollController();

  @override
  void initState() {
    _appBloc = context.read<AppBloc>();
    _appBloc.add(CheckLoggedInEvent(context));

    _dashboardBloc = context.read<DashboardBloc>();
    _dashboardBloc.add(DashboardLoadDataEvent());
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) _dashboardBloc.add(DashboardLoadDataEvent());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: BlocBuilder<DashboardBloc, DashboardState>(
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
                itemBuilder: (BuildContext context, int index) {
                  return index >= state.foods!.length ? const BottomLoader() : FoodListItem(food: state.foods![index]);
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
        // leading: Text('${food.id}', style: textTheme.caption),
        title: Text(food.namaBarang),
        isThreeLine: true,
        subtitle: Text(food.hargajual1.toString()),
        dense: true,
      ),
    );
  }
}
