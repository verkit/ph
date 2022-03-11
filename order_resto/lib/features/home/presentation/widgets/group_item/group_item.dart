import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_resto/core/utils/colors.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/domain/entities/group_entity.dart';
import 'package:order_resto/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'group_desktop_item.dart';
part 'group_mobile_item.dart';
part 'group_tablet_item.dart';

class GroupItem extends StatefulWidget {
  const GroupItem({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final GroupEntity item;
  final VoidCallback onTap;

  @override
  _GroupItemState createState() => _GroupItemState();
}

class _GroupItemState extends State<GroupItem> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => GroupMobileItem(
        item: widget.item,
        onTap: widget.onTap,
      ),
      tablet: (ctx) => GroupTabletItem(
        item: widget.item,
        onTap: widget.onTap,
      ),
      desktop: (ctx) => GroupDesktopItem(
        item: widget.item,
        onTap: widget.onTap,
      ),
    );
  }
}
