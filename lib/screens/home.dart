import 'package:flutter/material.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:rentalapp/config/colors.dart';
import 'package:rentalapp/data/app-data.dart';
import 'package:rentalapp/widgets/card-slide.dart';

import '../widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late var _scrollPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.bg,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Find Proprety',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(LucideIcons.search, color: Colors.grey.shade600),
                      const SizedBox(width: 15),
                      Icon(LucideIcons.bell, color: Colors.grey.shade600),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'According to your wishes ?',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 350,
                child: PageView.builder(
                  itemCount: Data.homes.length,
                  onPageChanged: (index){
                    setState(() {
                      _scrollPosition = index;
                    });
                  } ,
                  itemBuilder: ((BuildContext context, int index) {
                    return cardHeader(
                        image: Data.homes[index].images[0],
                        price: Data.homes[index].price,
                        titre: Data.homes[index].titre,
                        localisation: Data.homes[index].localisation,
                        rate: Data.homes[index].rate,
                        reviews: Data.homes[index].reviews
                    );
                  }),
                )
              ),
              const SizedBox(height: 10,),
              Center(
                child: SliderIndicator(
                  length: Data.homes.length,
                  indicator: const Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.grey,
                    ),
                  ),
                  activeIndex: _scrollPosition,
                    activeIndicator: Icon(Icons.circle, color: ColorApp.pink, size: 10),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Top Place',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: ColorApp.pink,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: Data.topPlaces.length,
                    itemBuilder: ((BuildContext context, int index) {
                      return cardSlider(image: Data.topPlaces[index].images[0], price: Data.topPlaces[index].price, titre: Data.topPlaces[index].titre);
                    })
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: ColorApp.bg,
        selectedItemColor: ColorApp.pink,
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(LucideIcons.home),
            ), label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(LucideIcons.map),
              ), label: 'Near Me'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(LucideIcons.heart),
              ), label: 'Favorite'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(LucideIcons.user),
              ), label: 'Profile'
          ),
        ],
      ),
    );
  }
}
