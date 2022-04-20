part of 'food_item.dart';

class FoodMobileItem extends StatelessWidget {
  const FoodMobileItem({
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
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: item.gambar != null
              ? Image.network(AppString.image(item.gambar!))
              : Image.asset(
                  'assets/default_food.jpg',
                  height: MediaQuery.of(context).size.width / 3.5,
                  fit: BoxFit.cover,
                ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.namaBarang.capitalize(),
                    style: textBold.copyWith(fontSize: 11),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 2),
                  // Text(
                  //   item.grup.isNotEmpty ? item.grup.split('-').last.capitalize() : '',
                  //   style: text.copyWith(
                  //     fontSize: 10,
                  //     color: AppColor.textColorSecondary,
                  //   ),
                  //   overflow: TextOverflow.ellipsis,
                  //   maxLines: 1,
                  // ),
                  // const SizedBox(height: 2),
                  Text(
                    'Rp ${item.hargajual1.currency()}',
                    style: textMedium.copyWith(fontSize: 11),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            // IconButton(
            //   onPressed: onAdd,
            //   icon: Icon(Remix.add_circle_fill, color: AppColor.buttonColor),
            //   splashColor: Colors.transparent,
            //   hoverColor: Colors.transparent,
            //   focusColor: Colors.transparent,
            //   highlightColor: Colors.transparent,
            // )
          ],
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: onAdd,
          child: Text(
            'Tambah',
            style: text.copyWith(
              fontSize: 11,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            fixedSize: Size(MediaQuery.of(context).size.width, 30),
          ),
        )
      ],
    );
  }
}
