part of 'cart_drawer.dart';

class CartDrawerMobile extends StatefulWidget {
  const CartDrawerMobile({Key? key}) : super(key: key);

  @override
  State<CartDrawerMobile> createState() => _CartDrawerMobileState();
}

class _CartDrawerMobileState extends State<CartDrawerMobile> {
  final TextEditingController _paymentSearchController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();
  final TextEditingController _jamController = TextEditingController();
  final TextEditingController _hpController = TextEditingController();
  final TextEditingController _dpController = TextEditingController();
  String? _payment;

  var regexNoHp = RegExp(r'^(^\+62|62|^08)(\d{3,4}-?){2}\d{3,4}$');

  @override
  void dispose() {
    _paymentSearchController.dispose();
    _hpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _paddingContent = const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 14,
    );
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Visibility(
          visible: state.isDrawerOpen,
          child: BlocBuilder<CartCubit, CartState>(
            builder: (context, cartstate) {
              return Align(
                alignment: Alignment.centerRight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Expanded(
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       context.read<HomeCubit>().closeDrawer();
                    //     },
                    //     child: Container(
                    //       color: Colors.transparent,
                    //       height: MediaQuery.of(context).size.height,
                    //       width: MediaQuery.of(context).size.width,
                    //     ),
                    //   ),
                    // ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 40,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: _paddingContent,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Visibility(
                                        visible: cartstate.items != null && cartstate.items!.isNotEmpty,
                                        child: IconButton(
                                          onPressed: () {
                                            context.read<CartCubit>().clearCart();
                                          },
                                          icon: Icon(
                                            Remix.delete_bin_6_fill,
                                            size: 24,
                                            color: Colors.redAccent[400],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: AutoSizeText(
                                          'Keranjang',
                                          style: textBold,
                                          maxLines: 1,
                                          maxFontSize: 14,
                                          minFontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    context.read<HomeCubit>().closeDrawer();
                                  },
                                  icon: const Icon(Remix.close_line, size: 24),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: BlocBuilder<CartCubit, CartState>(
                              builder: (context, cartstate2) {
                                if (cartstate2.items != null && cartstate2.items!.isNotEmpty) {
                                  return SingleChildScrollView(
                                    padding: _paddingContent,
                                    child: Column(
                                      children: [
                                        ...List.generate(
                                          cartstate.items!.length,
                                          (i) => CartItem(
                                            cart: cartstate2.items![i],
                                            onDecrease: () => context.read<CartCubit>().removeItem(
                                                  cartstate2.items![i],
                                                  cartstate2.qty!,
                                                ),
                                            onIncrease: () => context.read<CartCubit>().insertItem(
                                                  cartstate2.items![i],
                                                  cartstate2.qty!,
                                                ),
                                            changeCondiman: (val) {
                                              context.read<CartCubit>().changeCondiman(i, val);
                                            },
                                          ),
                                        ),
                                        const Divider(),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              AutoSizeText(
                                                'Total :',
                                                style: textBold,
                                                maxFontSize: 14,
                                                minFontSize: 14,
                                              ),
                                              AutoSizeText(
                                                'Rp ${cartstate2.total}',
                                                style: textBold,
                                                maxFontSize: 14,
                                                minFontSize: 14,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.asset(
                                        'assets/illustrations/empty_cart.png',
                                        width: responsiveSize(context, 200, maxSize: 300),
                                      ),
                                      SizedBox(height: responsiveSize(context, 24)),
                                      const Text('Kosong'),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Visibility(
                            visible: cartstate.items != null && cartstate.items!.isNotEmpty,
                            child: Container(
                              padding: _paddingContent,
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) {
                                        return SimpleDialog(
                                          title: const Text('Form pemesanan'),
                                          contentPadding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
                                          children: [
                                            const Text('Silahkan diisi'),
                                            const SizedBox(height: 8),
                                            const Text('Nama'),
                                            TextField(
                                              controller: _namaController,
                                              decoration: const InputDecoration(),
                                            ),
                                            const SizedBox(height: 20),
                                            const Text('No HP'),
                                            TextField(
                                              controller: _hpController,
                                              decoration: const InputDecoration(hintText: '0899xxxxx'),
                                            ),
                                            const SizedBox(height: 20),
                                            const Text('Tangal Pesan'),
                                            InkWell(
                                              onTap: () async {
                                                var _date = await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(2022),
                                                  lastDate: DateTime(2222),
                                                );
                                                if (_date != null) {
                                                  DateFormat formatter = DateFormat('dd MMMM yyyy');
                                                  setState(() {
                                                    _tanggalController.text = formatter.format(_date);
                                                  });
                                                }
                                              },
                                              child: TextField(
                                                controller: _tanggalController,
                                                decoration: const InputDecoration(enabled: false),
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            const Text('Jam Pesan'),
                                            InkWell(
                                              onTap: () async {
                                                var _time = await showTimePicker(
                                                  context: context,
                                                  initialTime: TimeOfDay.now(),
                                                );
                                                if (_time != null) {
                                                  setState(() {
                                                    _jamController.text = _time.format(context);
                                                  });
                                                }
                                              },
                                              child: TextField(
                                                controller: _jamController,
                                                decoration: const InputDecoration(enabled: false),
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            const Text('Pilih pembayaran'),
                                            const SizedBox(height: 20),
                                            DropdownSearch<String>(
                                              searchFieldProps: TextFieldProps(
                                                controller: _paymentSearchController,
                                                decoration: InputDecoration(
                                                  suffixIcon: IconButton(
                                                    icon: const Icon(Icons.clear),
                                                    onPressed: () {
                                                      _paymentSearchController.clear();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              mode: Mode.BOTTOM_SHEET,
                                              maxHeight: 700,
                                              isFilteredOnline: true,
                                              showClearButton: true,
                                              showSelectedItems: true,
                                              compareFn: (item, selectedItem) => item == selectedItem,
                                              showSearchBox: true,
                                              dropdownSearchDecoration: InputDecoration(
                                                // labelText: 'User *',
                                                filled: true,
                                                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                                              ),
                                              dropdownBuilder: (ctx, item) {
                                                return ListTile(
                                                  title: Text(item ?? ''),
                                                );
                                              },
                                              autoValidateMode: AutovalidateMode.onUserInteraction,
                                              validator: (u) => u == null ? 'Meja wajib diisi ' : null,
                                              onFind: (String? filter) async {
                                                return jenisPembayaran
                                                    .where((element) => element.contains(filter!))
                                                    .toList();
                                              },
                                              onChanged: (data) {
                                                setState(() {
                                                  _payment = data;
                                                });
                                              },
                                              popupItemBuilder: _customPopupItemBuilderExample,
                                              popupSafeArea: const PopupSafeAreaProps(top: true, bottom: true),
                                              scrollbarProps: ScrollbarProps(
                                                isAlwaysShown: true,
                                                thickness: 7,
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            const Text('Jumlah DP'),
                                            TextField(
                                              controller: _dpController,
                                              keyboardType: TextInputType.number,
                                              decoration: const InputDecoration(),
                                            ),
                                            const SizedBox(height: 20),
                                            ElevatedButton(
                                              onPressed: () async {
                                                if (_hpController.text.isNotEmpty && _payment != null) {
                                                  if (regexNoHp.hasMatch(_hpController.text)) {
                                                    if (int.parse(_dpController.text) < 1) {
                                                      var response = await context.read<CartCubit>().sendOrder(
                                                            nama: _namaController.text,
                                                            dp: _dpController.text,
                                                            jamPemesanan: _jamController.text,
                                                            tanggalPemesanan: _tanggalController.text,
                                                            pembayaran: _payment!,
                                                            hp: _hpController.text,
                                                          );
                                                      Navigator.pop(context);
                                                      showDialog(
                                                        context: context,
                                                        builder: (_) => SimpleDialog(
                                                          title: const Text('Pesan'),
                                                          children: [
                                                            Center(child: Text(response)),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                    EasyLoading.showError('Masukkan angka yang valid');
                                                  } else {
                                                    EasyLoading.showError('Nomor hp tidak valid');
                                                  }
                                                } else {
                                                  EasyLoading.showError('Masukin semua');
                                                }
                                              },
                                              child: const Text('Pesan'),
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: const Text('Pesan'),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(responsiveSize(context, 250, minSize: 200, maxSize: 400), 50),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _customPopupItemBuilderExample(BuildContext context, String item, bool isSelected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: !isSelected
          ? null
          : BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
      child: ListTile(
        selected: isSelected,
        title: Text(item),
      ),
    );
  }
}
