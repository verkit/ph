part of 'group_item.dart';

class GroupDesktopItem extends StatelessWidget {
  const GroupDesktopItem({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final GroupEntity item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.fromLTRB(8, 40, 8, 16),
          margin: const EdgeInsets.only(right: 21),
          width: responsiveSize(context, 90, maxSize: 110),
          decoration: BoxDecoration(
            color: item == state.selectedGroup ? AppColor.buttonColor : AppColor.backgroundColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: AppColor.textColor.withOpacity(0.05),
              width: 1.5,
            ),
          ),
          child: InkWell(
            onTap: onTap,
            child: Column(
              children: [
                Image.asset(
                  item.icon,
                  width: 24,
                ),
                const SizedBox(height: 12),
                AutoSizeText(
                  item.name,
                  style: textSemiBold.copyWith(color: item == state.selectedGroup ? Colors.white : AppColor.textColor),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
