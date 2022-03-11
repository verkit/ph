part of 'cart_item.dart';

class CartTabletItem extends StatefulWidget {
  const CartTabletItem({
    Key? key,
    required this.item,
    required this.onDecrease,
    required this.onIncrease,
    required this.changeCondiman,
  }) : super(key: key);

  final CartEntity item;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;
  final Function(String)? changeCondiman;

  @override
  State<CartTabletItem> createState() => _CartTabletItemState();
}

class _CartTabletItemState extends State<CartTabletItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => widget.onDecrease(),
                    icon: Icon(
                      Remix.indeterminate_circle_fill,
                      color: Colors.redAccent[400],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveSize(
                        context,
                        14,
                        maxSize: 21,
                        minSize: 6,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: widget.item.makanan.gambar ?? AppString.imageFoodDummy,
                        height: 70,
                        width: 100,
                        // height: responsiveSize(context, 30, maxSize: 50, minSize: 40),
                        // width: responsiveSize(context, 50, maxSize: 83, minSize: 40),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  AutoSizeText(
                    widget.item.qty.toString(),
                    style: textBold,
                    maxLines: 1,
                    minFontSize: 12,
                    maxFontSize: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: AutoSizeText(
                      'x',
                      style: textBold.copyWith(
                        color: AppColor.textColorSecondary,
                      ),
                      maxLines: 1,
                      minFontSize: 12,
                      maxFontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: AutoSizeText(
                      widget.item.makanan.namaBarang,
                      style: textBold,
                      maxLines: 3,
                      minFontSize: 12,
                      maxFontSize: 14,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    AutoSizeText(
                      'Rp ${widget.item.makanan.hargajual1 * widget.item.qty}',
                      style: textBold.copyWith(
                        color: AppColor.textColorSecondary,
                      ),
                      minFontSize: 12,
                      maxFontSize: 14,
                    ),
                    IconButton(
                      onPressed: () => widget.onIncrease(),
                      icon: Icon(
                        Remix.add_circle_fill,
                        color: AppColor.buttonColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 60),
              Expanded(
                child: TextField(
                  onChanged: widget.changeCondiman,
                  decoration: const InputDecoration(border: InputBorder.none, hintText: 'Catatan'),
                  style: text.copyWith(
                    color: AppColor.textColorSecondary,
                    fontSize: fontResponsive(context, 14, minSize: 14, maxSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
