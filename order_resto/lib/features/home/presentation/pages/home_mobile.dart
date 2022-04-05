part of 'home_page.dart';

class HomeMobilePage extends StatefulWidget {
  const HomeMobilePage({Key? key}) : super(key: key);

  @override
  _HomeMobilePageState createState() => _HomeMobilePageState();
}

class _HomeMobilePageState extends State<HomeMobilePage> {
  @override
  void initState() {
    context.read<HomeCubit>().loadData();
    context.read<CartCubit>().loadItem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.status == AppState.success) {
          return Scaffold(
            body: Stack(
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(0, 96, 0, 64),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            state.groups!.length,
                            (index) => GroupItem(
                              onTap: () {
                                context.read<HomeCubit>().selectGroup(state.groups![index]);
                              },
                              item: state.groups![index],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          responsiveSize(context, 24, minSize: 16, maxSize: 24),
                          32,
                          responsiveSize(context, 24, minSize: 16, maxSize: 24),
                          0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Menu',
                              style: textBold,
                            ),
                            const SizedBox(height: 24),
                            BlocBuilder<CartCubit, CartState>(
                              builder: (context, cartstate) {
                                return GridView.count(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 8,
                                  shrinkWrap: true,
                                  childAspectRatio: 3 / 4,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: List.generate(
                                    state.foods!.length,
                                    (i) => FoodItem(
                                      item: state.foods![i],
                                      onAdd: () {
                                        context.read<CartCubit>().insertItem(state.foods![i], cartstate.qty!);
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                            // GridView.builder(
                            //   shrinkWrap: true,
                            //   physics: const NeverScrollableScrollPhysics(),
                            //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            //     maxCrossAxisExtent: 400,
                            //     crossAxisSpacing: 24,
                            //     mainAxisSpacing: 24,
                            //   ),
                            //   itemBuilder: (ctx, i) {
                            //     return FoodItem(
                            //       name: foodGroups[0].name,
                            //       iconPath: foodGroups[0].icon,
                            //     );
                            //   },
                            //   itemCount: 15,
                            // )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const HeaderApp(),
                const CartDrawer()
              ],
            ),
          );
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(
              color: AppColor.accentColor,
            ),
          ),
        );
      },
    );
  }
}
