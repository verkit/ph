part of 'cart_drawer.dart';

class CartDrawerMobile extends StatefulWidget {
  const CartDrawerMobile({Key? key}) : super(key: key);

  @override
  State<CartDrawerMobile> createState() => _CartDrawerMobileState();
}

class _CartDrawerMobileState extends State<CartDrawerMobile> {
  final TextEditingController _editingController = TextEditingController();

  final TextEditingController _hpController = TextEditingController();

  CustomerEntity? customer;

  var regexNoHp = RegExp(r'^(^\+62|62|^08)(\d{3,4}-?){2}\d{3,4}$');

  @override
  void dispose() {
    _editingController.dispose();
    _hpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _paddingContent = EdgeInsets.symmetric(
      vertical: 24,
      horizontal: responsiveSize(
        context,
        21,
        minSize: 18,
        maxSize: 24,
      ),
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
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.read<HomeCubit>().closeDrawer();
                        },
                        child: Container(
                          color: Colors.transparent,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: responsiveSize(context, 350, maxSize: 500),
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
                                          maxFontSize: 18,
                                          minFontSize: 18,
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
                                                maxFontSize: 18,
                                                minFontSize: 18,
                                              ),
                                              AutoSizeText(
                                                'Rp ${cartstate2.total}',
                                                style: textBold,
                                                maxFontSize: 18,
                                                minFontSize: 18,
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
                                            const Text('No HP'),
                                            TextField(
                                              controller: _hpController,
                                              decoration: const InputDecoration(hintText: '0899xxxxx'),
                                            ),
                                            const SizedBox(height: 20),
                                            const Text('Pilih meja'),
                                            const SizedBox(height: 20),
                                            DropdownSearch<CustomerEntity>(
                                              searchFieldProps: TextFieldProps(
                                                controller: _editingController,
                                                decoration: InputDecoration(
                                                  suffixIcon: IconButton(
                                                    icon: const Icon(Icons.clear),
                                                    onPressed: () {
                                                      _editingController.clear();
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
                                                  title: Text(item != null ? item.namaPelanggan : ''),
                                                );
                                              },
                                              autoValidateMode: AutovalidateMode.onUserInteraction,
                                              validator: (u) => u == null ? 'Meja wajib diisi ' : null,
                                              onFind: (String? filter) async {
                                                return state.customers!
                                                    .where((element) => element.namaPelanggan.contains(filter!))
                                                    .toList();
                                              },
                                              onChanged: (data) {
                                                setState(() {
                                                  customer = data;
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
                                            ElevatedButton(
                                              onPressed: () async {
                                                if (_hpController.text.isNotEmpty && customer != null) {
                                                  if (regexNoHp.hasMatch(_hpController.text)) {
                                                    if (customer != null) {
                                                      var response = await context.read<CartCubit>().sendOrder(
                                                            customer: customer!,
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

  Widget _customPopupItemBuilderExample(BuildContext context, CustomerEntity item, bool isSelected) {
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
        title: Text(item.namaPelanggan),
      ),
    );
  }
}
