import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../config/colors.dart';

Widget cardList({required image, required titre, required localisation, required rate, required reviews, required baths, required beds, required floors, required wifi, required tv, required garage, required price, required type}) {
  return SizedBox(
    width: double.infinity,
    height: 470,
    child: Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5))
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          titre,
                        style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: ColorApp.pink
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(LucideIcons.mapPin, color: Colors.brown, size: 15),
                          const SizedBox(width: 10),
                          Text(
                            localisation,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      rateStars(rate)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      badge(type),
                      const SizedBox(height: 10),
                      Text(
                        '$reviews reviews',
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(LucideIcons.bath, size: 12, color: Colors.grey.shade500),
                          const SizedBox(width: 10),
                          Text('$baths Baths'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(LucideIcons.wifi, size: 12, color: Colors.grey.shade500),
                          const SizedBox(width: 10),
                          const Text('Wifi'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.bed, size: 12, color: Colors.grey.shade500),
                          const SizedBox(width: 10),
                          Text('$beds Beds'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.tv, size: 12, color: Colors.grey.shade500),
                          const SizedBox(width: 10),
                          const Text('TV'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(LucideIcons.lampFloor, size: 12, color: Colors.grey.shade500),
                          const SizedBox(width: 10),
                          Text('$floors Floors'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.bathtub, size: 12, color: Colors.grey.shade500),
                          const SizedBox(width: 10),
                          const Text('Garage'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      '\$$price',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    decoration: BoxDecoration(
                      color: ColorApp.pink,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
                      child: Text(
                        'View Detail',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}


rateStars(rate) {
  switch(rate) {
    case 1: {
      return Row(
        children: [
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const SizedBox(width: 20),
          Text(
            rate.toString(),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      );
    }
    case 2: {
      return Row(
        children: [
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const SizedBox(width: 20),
          Text(
            rate.toString(),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      );
    }
    break;
    case 3: {
      return Row(
        children: [
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const SizedBox(width: 20),
          Text(
            rate.toString(),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      );
    }
    break;
    case 4: {
      return Row(
        children: [
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star_border_purple500_outlined, size: 15, color: Colors.grey),
          const SizedBox(width: 20),
          Text(
            rate.toString(),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      );
    }
    break;
    case 5: {
      return Row(
        children: [
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const Icon(Icons.star, size: 15, color: Colors.yellow),
          const SizedBox(width: 20),
          Text(
            rate.toString(),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      );
    }
    break;
  }
}

badge(type) {
  if(type == 1) {
    return Chip(
      padding: const EdgeInsets.all(0),
      backgroundColor: ColorApp.green,
      label: const Text('For sell', style: TextStyle(color: Colors.green)),
    );
  } else {
  return Chip(
    padding: const EdgeInsets.all(0),
    backgroundColor: ColorApp.brown,
    label: const Text('For rent', style: TextStyle(color: Colors.brown)),
    );
  }
}