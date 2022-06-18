import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:rentalapp/config/colors.dart';
import 'package:rentalapp/data/app-data.dart';
import 'package:rentalapp/widgets/card-list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.bg,
      appBar: AppBar(
        backgroundColor: ColorApp.bg,
        elevation: 0,
        title: const Text(
            'Search',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            letterSpacing: 3
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          } ,
        ),
        actions: const [
          Icon(Icons.filter_list, color: Colors.black)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(5),
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Type"),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("House",style: TextStyle(fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          Icon(LucideIcons.chevronDown, size: 20, color: ColorApp.pink,)
                        ],
                      )
                    ],
                  ),
                  const VerticalDivider(
                    width: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("City"),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Libreville",style: TextStyle(fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          Icon(LucideIcons.chevronDown, size: 20, color: ColorApp.pink,)
                        ],
                      )
                    ],
                  ),
                  const VerticalDivider(
                    width: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Budget"),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("300K", style: TextStyle(fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          Icon(LucideIcons.chevronDown, size: 20, color: ColorApp.pink,)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      'Search Result',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: Data.homes.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: ((BuildContext context, int index) {
                    final home = Data.homes[index];
                    return cardList(
                        image: home.images[0],
                        titre: home.titre,
                        localisation: home.localisation,
                        rate: home.rate,
                        reviews: home.reviews,
                        baths: home.baths,
                        beds: home.beds,
                        floors: home.floor,
                        wifi: home.wifi,
                        tv: home.tv,
                        garage: home.garage,
                        price: home.price,
                        type: home.type
                    );
                  }),
                )
            )
          ],
        ),
      ),
    );
  }
}
