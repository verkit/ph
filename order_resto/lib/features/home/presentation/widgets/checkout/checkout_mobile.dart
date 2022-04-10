part of 'checkout.dart';

class CheckoutMobile extends StatefulWidget {
  const CheckoutMobile({Key? key}) : super(key: key);

  @override
  State<CheckoutMobile> createState() => _CheckoutMobileState();
}

class _CheckoutMobileState extends State<CheckoutMobile> {
  final TextEditingController _paymentSearchController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();
  final TextEditingController _jamController = TextEditingController();
  final TextEditingController _hpController = TextEditingController();
  final MaskedTextController _dpController = MaskedTextController(mask: '000,000,000');
  String? _payment;

  var regexNoHp = RegExp(r'^(^\+62|62|^08)(\d{3,4}-?){2}\d{3,4}$');

  @override
  void dispose() {
    _paymentSearchController.dispose();
    _hpController.dispose();
    _namaController.dispose();
    _tanggalController.dispose();
    _jamController.dispose();
    _dpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pesan',
          style: textBold.copyWith(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text('Silahkan diisi'),
            // const SizedBox(height: 8),
            Text(
              'Nama',
              style: textBold.copyWith(fontSize: 12),
            ),
            TextField(
              controller: _namaController,
              decoration: inputDecoration.copyWith(hintText: 'Masukkan nama'),
            ),
            const SizedBox(height: 20),
            Text(
              'No HP',
              style: textBold.copyWith(fontSize: 12),
            ),
            TextField(
              controller: _hpController,
              decoration: inputDecoration.copyWith(hintText: '08xxxxxxxxxx'),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Tangal Pesan',
              style: textBold.copyWith(fontSize: 12),
            ),
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
                decoration: inputDecoration.copyWith(hintText: 'Masukkan tanggal'),
                enabled: false,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Jam Pesan',
              style: textBold.copyWith(fontSize: 12),
            ),
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
                enabled: false,
                decoration: inputDecoration.copyWith(hintText: 'Masukkan jam'),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Pembayaran',
              style: textBold.copyWith(fontSize: 12),
            ),
            const SizedBox(height: 8),
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
              maxHeight: 300,
              isFilteredOnline: false,
              showClearButton: false,
              showSelectedItems: true,
              showSearchBox: false,
              showAsSuffixIcons: false,
              compareFn: (item, selectedItem) => item == selectedItem,
              dropdownBuilder: (ctx, item) {
                return Text(item ?? 'Pilih pembayaran', style: text.copyWith(fontSize: 14));
              },
              autoValidateMode: AutovalidateMode.onUserInteraction,
              validator: (u) => u == null ? 'Pembayaran wajib diisi ' : null,
              onFind: (String? filter) async {
                return AppString.jenisPembayaran.where((element) => element.contains(filter!)).toList();
              },
              onChanged: (data) {
                setState(() {
                  _payment = data;
                });
              },
              popupItemBuilder: _customPopupItemBuilderExample,
              scrollbarProps: ScrollbarProps(
                isAlwaysShown: true,
                thickness: 7,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Jumlah DP',
              style: textBold.copyWith(fontSize: 12),
            ),
            TextField(
              controller: _dpController,
              keyboardType: TextInputType.number,
              decoration: inputDecoration.copyWith(hintText: 'Contoh: 100000'),
              onChanged: (value) {
                _dpController.updateText(value);
              },
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
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
              style: ElevatedButton.styleFrom(
                elevation: 0,
                minimumSize: const Size.fromHeight(50),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _customPopupItemBuilderExample(BuildContext context, String item, bool isSelected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: ListTile(
        selected: isSelected,
        title: Text(item),
      ),
    );
  }
}
