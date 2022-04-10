part of 'home_page.dart';

class HomeDesktopPage extends StatefulWidget {
  const HomeDesktopPage({Key? key}) : super(key: key);

  @override
  _HomeDesktopPageState createState() => _HomeDesktopPageState();
}

class _HomeDesktopPageState extends State<HomeDesktopPage> {
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
                  padding: EdgeInsets.fromLTRB(
                    responsiveSize(context, 64, minSize: 48, maxSize: 64),
                    120,
                    responsiveSize(context, 64, minSize: 48, maxSize: 64),
                    64,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
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
                      const SizedBox(height: 48),
                      Text(
                        'Menu',
                        style: textBold.copyWith(fontSize: 21),
                      ),
                      const SizedBox(height: 36),
                      BlocBuilder<CartCubit, CartState>(
                        builder: (context, cartstate) {
                          return GridView.count(
                            crossAxisCount: (MediaQuery.of(context).size.width / 300).round(),
                            crossAxisSpacing: 24,
                            mainAxisSpacing: 24,
                            shrinkWrap: true,
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
