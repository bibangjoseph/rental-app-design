import 'package:rentalapp/models/home.dart';

class Data {
  static List homes = [
    Home(id: 1, titre: "Bel Air Appartement", localisation: "Libreville, Bel Air", baths: 4, beds: 6, floor: 2, garage: false, wifi: false, tv: true, price: 259, rate: 4, images: ['assets/images/maison-1.jpeg', 'assets/images/maison-2.jpeg']),
    Home(id: 2, titre: "Villa Nzeng", localisation: "Libreville, Nzeng-Ayong", baths: 2, beds: 2, floor: 1, garage: true, wifi: false, tv: false, price: 305, rate: 2, images: ['assets/images/maison-3.jpg', 'assets/images/maison-4.jpg']),
    Home(id: 3, titre: "Résidence Charbonnage", localisation: "Libreville, Charbonnages", baths: 2, beds: 4, floor: 3, garage: false, wifi: true, tv: false, price: 140, rate: 5, images: ['assets/images/maison-5.jpg', 'assets/images/maison-6.jpg']),
    Home(id: 4, titre: "Vivo Appartement", localisation: "Libreville, PK8", baths: 1, beds: 1, floor: 2, garage: true, wifi: true, tv: true, price: 300, rate: 1, images: ['assets/images/maison-7.jpg', 'assets/images/maison-8.jpg']),
  ];
}