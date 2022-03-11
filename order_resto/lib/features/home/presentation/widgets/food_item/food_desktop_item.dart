part of 'food_item.dart';

class FoodDesktopItem extends StatelessWidget {
  const FoodDesktopItem({
    Key? key,
    required this.item,
    required this.onAdd,
  }) : super(key: key);

  final VoidCallback onAdd;
  final FoodEntity item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                item.gambar ?? AppString.imageFoodDummy,
              ),
              fit: BoxFit.cover,
            ),
            color: AppColor.backgroundColor,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.namaBarang,
                    style: textBold.copyWith(fontSize: 12),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        'Rp ${item.hargajual1}',
                        style: textSemiBold.copyWith(
                          fontSize: 12,
                          color: AppColor.textColorSecondary,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Icon(Icons.circle, size: 3, color: Colors.grey[200]),
                      ),
                      Text(
                        item.grup.split('-').last.capitalize(),
                        style: textSemiBold.copyWith(
                          fontSize: 12,
                          color: AppColor.textColorSecondary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: onAdd,
              icon: Icon(Remix.add_circle_fill, color: AppColor.buttonColor),
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
            )
          ],
        ),
      ],
    );
  }
}
