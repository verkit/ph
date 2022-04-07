part of 'cart_drawer.dart';

class CartDrawerDesktop extends StatefulWidget {
  const CartDrawerDesktop({Key? key}) : super(key: key);

  @override
  State<CartDrawerDesktop> createState() => _CartDrawerDesktopState();
}

class _CartDrawerDesktopState extends State<CartDrawerDesktop> {
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
                      width: responsiveSize(context, 500, maxSize: 500),
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
                                      // Visibility(
                                      //   visible: cartstate.items != null && cartstate.items!.isNotEmpty,
                                      //   child: IconButton(
                                      //     onPressed: () {
                                      //       context.read<CartCubit>().clearCart();
                                      //     },
                                      //     icon: Icon(
                                      //       Remix.delete_bin_6_fill,
                                      //       size: 24,
                                      //       color: Colors.redAccent[400],
                                      //     ),
                                      //   ),
                                      // ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Text(
                                          'Keranjang',
                                          style: textBold.copyWith(fontSize: 14),
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
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Total : Rp ${cartstate2.total.currency()}',
                                              style: textSemiBold.copyWith(fontSize: 14),
                                            ),
                                          ],
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
                                    Navigator.push(context, MaterialPageRoute(builder: (_) => const CheckoutPage()));
                                  },
                                  child: const Text('Pesan'),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
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
}
