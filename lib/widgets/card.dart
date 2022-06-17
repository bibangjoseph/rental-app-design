import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:rentalapp/config/colors.dart';

Widget cardHeader({required image, required price, required titre,  required localisation, required rate, required reviews}) {
  return Stack(
    children: [
      Positioned.fill(
        top: 0,
        left: 0,
        bottom: 50,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
      Positioned.fill(
        top: 200,
        left: 40,
        right: 40,
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price.toString(),
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: ColorApp.pink,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(LucideIcons.navigation, color: Colors.white, size: 20,)
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                      titre,
                    style: TextStyle(
                      color: ColorApp.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      rateStars(rate)
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '$reviews reviews',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
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