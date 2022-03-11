part of 'header.dart';

class HeaderMobile extends StatefulWidget {
  const HeaderMobile({Key? key}) : super(key: key);

  @override
  State<HeaderMobile> createState() => _HeaderMobileState();
}

class _HeaderMobileState extends State<HeaderMobile> {
  final TextEditingController _search = TextEditingController();

  Timer? debounce;

  void handleSearch(String value) {
    if (debounce != null) debounce!.cancel();
    setState(() {
      debounce = Timer(const Duration(milliseconds: 800), () {
        context.read<HomeCubit>().searchQuery(_search.text);
      });
    });
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      padding: EdgeInsets.symmetric(
        vertical: 24,
        horizontal: responsiveSize(
          context,
          48,
          minSize: 48,
          maxSize: 48,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              text: 'Order ',
              children: [
                TextSpan(
                  text: 'Restoran',
                  style: text.copyWith(),
                )
              ],
            ),
            style: textBold.copyWith(
              fontSize: fontResponsive(
                context,
                18,
                maxSize: 18,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.33,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              controller: _search,
              cursorColor: AppColor.textColor,
              style: text.copyWith(fontSize: 14),
              onChanged: (query) {
                setState(() {
                  handleSearch(query);
                });
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                hintText: 'Cari',
                hintStyle: textMedium,
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: _search.text.isNotEmpty
                      ? () {
                          setState(() {
                            _search.clear();
                            context.read<HomeCubit>().clearFilter();
                          });
                        }
                      : null,
                  icon: Icon(
                    _search.text.isNotEmpty ? Remix.close_line : Remix.search_2_line,
                    color: AppColor.accentColor,
                    size: 21,
                  ),
                ),
                suffixIconColor: AppColor.accentColor,
                fillColor: AppColor.textColor,
                focusColor: AppColor.textColor,
                hoverColor: AppColor.textColor,
              ),
              maxLines: 1,
            ),
          ),
          BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              return InkWell(
                onTap: () {
                  context.read<HomeCubit>().openDrawer();
                },
                child: Container(
                  padding: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: AppColor.backgroundAccentColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Badge(
                    showBadge: state.items != null && state.items!.isNotEmpty,
                    badgeColor: AppColor.buttonColor,
                    badgeContent: Text(
                      state.items != null && state.items!.isNotEmpty ? state.qty!.toString() : '',
                      style: text.copyWith(
                        fontSize: 10,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    child: Icon(
                      Remix.shopping_bag_3_line,
                      color: AppColor.accentColor,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
