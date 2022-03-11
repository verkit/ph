import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/domain/entities/group_entity.dart';

final List<GroupEntity> foodGroups = [
  const GroupEntity(kode: '1', name: 'Semua', icon: 'assets/icons/semua.png'),
  const GroupEntity(kode: '1', name: 'Ayam', icon: 'assets/icons/ayam.png'),
  const GroupEntity(kode: '1', name: 'Ikan', icon: 'assets/icons/ikan.png'),
  const GroupEntity(kode: '1', name: 'Nasi', icon: 'assets/icons/nasi.png'),
  const GroupEntity(kode: '1', name: 'Minuman', icon: 'assets/icons/minuman.png'),
  const GroupEntity(kode: '1', name: 'Sayur', icon: 'assets/icons/sayur.png'),
  const GroupEntity(kode: '1', name: 'Sambal', icon: 'assets/icons/sambal.png'),
  const GroupEntity(kode: '1', name: 'Lainnya', icon: 'assets/icons/lain.png'),
];

final List<FoodEntity> foods = [
  const FoodEntity(
    idtab: 1,
    kodeBarang: '1',
    namaBarang: 'Ayam Goyeng',
    grup: 'AYAM',
    hargajual1: 12000,
    namaKemasan: '001-PRG',
    gambar: 'https://i.ibb.co/YtVM6vv/Gurami-Asam-Manis.jpg',
  ),
  const FoodEntity(
    idtab: 2,
    kodeBarang: '2',
    namaBarang: 'Es Jeruk',
    grup: 'ES',
    hargajual1: 4000,
    namaKemasan: '001-GLS',
    gambar: 'https://i.ibb.co/sQ8F8nv/es-jeruk-kelapa.jpg',
  ),
  const FoodEntity(
    idtab: 3,
    kodeBarang: '2',
    namaBarang: 'Ayam goreng sambal ijo',
    grup: 'Ayam',
    hargajual1: 14000,
    namaKemasan: '001-PRG',
    gambar: 'https://i.ibb.co/3cdXsNg/ayam-goreng-sambel-ijo.jpg',
  ),
];
