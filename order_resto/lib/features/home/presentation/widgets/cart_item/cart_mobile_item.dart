part of 'cart_item.dart';

class CartMobileItem extends StatefulWidget {
  const CartMobileItem({
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
  State<CartMobileItem> createState() => _CartMobileItemState();
}

class _CartMobileItemState extends State<CartMobileItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => widget.onDecrease(),
                icon: Icon(
                  Remix.indeterminate_circle_fill,
                  color: Colors.redAccent[400],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: CachedNetworkImage(
                        imageUrl: widget.item.makanan.gambar ?? AppString.imageFoodDummy,
                        height: 40,
                        width: 60,
                        // height: responsiveSize(context, 30, maxSize: 50, minSize: 40),
                        // width: responsiveSize(context, 50, maxSize: 83, minSize: 40),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    AutoSizeText(
                      widget.item.qty.toString(),
                      style: textBold,
                      maxLines: 1,
                      maxFontSize: 10,
                      minFontSize: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: AutoSizeText(
                        'x',
                        style: textBold.copyWith(
                          color: AppColor.textColorSecondary,
                        ),
                        maxLines: 1,
                        maxFontSize: 10,
                        minFontSize: 8,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: AutoSizeText(
                        widget.item.makanan.namaBarang,
                        style: textBold,
                        maxLines: 3,
                        maxFontSize: 10,
                        minFontSize: 8,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Row(
                  children: [
                    AutoSizeText(
                      'Rp ${widget.item.makanan.hargajual1 * widget.item.qty}',
                      style: textBold.copyWith(
                        color: AppColor.textColorSecondary,
                      ),
                      maxFontSize: 10,
                      minFontSize: 8,
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
              const SizedBox(width: 48),
              Expanded(
                child: TextField(
                  onChanged: widget.changeCondiman,
                  decoration: const InputDecoration(border: InputBorder.none, hintText: 'Catatan'),
                  style: text.copyWith(
                    fontSize: 11,
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
