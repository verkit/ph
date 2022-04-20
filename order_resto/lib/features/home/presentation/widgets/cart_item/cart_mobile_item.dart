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
      margin: const EdgeInsets.only(left: 12),
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.item.makanan.namaBarang,
                            style: textSemiBold.copyWith(fontSize: 13.0),
                            maxLines: 3,
                          ),
                          const SizedBox(height: 6),
                          widget.item.condiman != null
                              ? Column(
                                  children: [
                                    Text.rich(
                                      TextSpan(children: [
                                        const TextSpan(text: 'Catatan : '),
                                        TextSpan(
                                          text: widget.item.condiman!,
                                          style: text.copyWith(fontSize: 12.0),
                                        )
                                      ]),
                                      style: textMedium.copyWith(fontSize: 12.0),
                                      maxLines: 3,
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                )
                              : const SizedBox(),
                          Text(
                            'Rp ${(widget.item.makanan.hargajual1 * widget.item.qty).currency()}',
                            style: text.copyWith(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          imageUrl: AppString.image(widget.item.makanan.gambar ?? AppString.imageFoodDummy),
                          height: 75,
                          width: 75,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      String condiman = widget.item.condiman ?? '';
                      return StatefulBuilder(
                        builder: (ctx, setState) => AlertDialog(
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Catatan', style: textBold),
                              const SizedBox(height: 8),
                              TextFormField(
                                initialValue: condiman,
                                onChanged: (val) {
                                  if (val.isNotEmpty) {
                                    setState(() {
                                      condiman = val;
                                    });
                                  }
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Contoh: Ekstra pedas ya!',
                                ),
                                style: text.copyWith(fontSize: 13),
                              ),
                              const SizedBox(height: 8),
                              Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  onPressed: condiman.isNotEmpty
                                      ? () {
                                          widget.changeCondiman!(condiman);
                                          Navigator.pop(context);
                                        }
                                      : null,
                                  child: const Text('Simpan'),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                label: Text(
                  'Catatan',
                  style: textMedium.copyWith(fontSize: 10, color: Colors.black),
                ),
                icon: const Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: 16,
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  elevation: 0,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(0, 35),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => widget.onDecrease(),
                    icon: Icon(
                      Remix.indeterminate_circle_fill,
                      color: Colors.redAccent[400],
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    widget.item.qty.toString(),
                    style: textMedium,
                    maxLines: 1,
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    onPressed: () => widget.onIncrease(),
                    icon: Icon(
                      Remix.add_circle_fill,
                      color: AppColor.buttonColor,
                      size: 24,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
