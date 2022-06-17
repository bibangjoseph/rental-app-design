import 'package:flutter/material.dart';
import 'package:rentalapp/config/colors.dart';

Widget cardSlider({required image, required price, required titre}) {
  return Container(
    margin: const EdgeInsets.all(5),
    width: 150,
    height: 150,
    child: Column(
      children: [
        SizedBox(
          width: 150,
          height: 130,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(image, fit: BoxFit.cover)
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ColorApp.bgCard,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titre, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(price.toString(), style: const TextStyle(color: Colors.grey, fontSize: 15),)
            ],
          ),
        )
      ],
    ),
  );
}