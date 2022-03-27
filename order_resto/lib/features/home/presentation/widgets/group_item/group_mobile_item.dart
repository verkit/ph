part of 'group_item.dart';

class GroupMobileItem extends StatelessWidget {
  const GroupMobileItem({
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
          padding: const EdgeInsets.fromLTRB(0, 24, 0, 16),
          margin: const EdgeInsets.only(right: 12),
          width: 80,
          decoration: BoxDecoration(
            color: item == state.selectedGroup ? AppColor.buttonColor : AppColor.backgroundColor,
            borderRadius: BorderRadius.circular(16),
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
                  width: 21,
                ),
                const SizedBox(height: 8),
                AutoSizeText(
                  item.name,
                  style: textSemiBold.copyWith(
                    color: item == state.selectedGroup ? Colors.white : AppColor.textColor,
                    fontSize: 8,
                  ),
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
