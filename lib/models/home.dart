class Home{
  late int id;
  late String titre;
  late String localisation;
  late int baths;
  late int beds;
  late int floor;
  late bool garage;
  late bool wifi;
  late bool tv;
  late int price;
  late int rate;
  late List images;

  Home(
        {
          required this.id,
          required this.titre,
          required this.localisation,
          required this.baths,
          required this.beds,
          required this.floor,
          required this.garage,
          required this.wifi,
          required this.tv,
          required this.price,
          required this.rate,
          required this.images
        }
        );
}