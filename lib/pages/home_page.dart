import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_ui/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71, // 115 - 44 or systembar
        title: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            padding: EdgeInsets.all(5),
            color: green1,
            height: 50,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    child: Text(
                      "Beranda",
                      style: semibold14.copyWith(color: green2),
                    ),
                  ),
                ),
                ...["Promo", "Pesanan", "Chat"].map(
                  (title) => Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 12),
                        child: Center(
                          child: Text(
                            title,
                            style: semibold14.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 23, bottom: 15, right: 15),
                      child: SizedBox(
                        height: 35,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Cari layanan, makanan, & tujuan",
                            hintStyle: regular14.copyWith(color: dark3),
                            filled: true,
                            isDense: true,
                            constraints: BoxConstraints(maxHeight: 35),
                            fillColor: Color(0xFFFAFAFA),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E8E8),
                                )),
                            prefixIcon: SvgPicture.asset(
                              "assets/icons/search.svg",
                              colorFilter:
                                  ColorFilter.mode(dark1, BlendMode.srcIn),
                            ),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 15, bottom: 15, top: 23),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 17.5,
                        backgroundImage: AssetImage("assets/images/Avatar.png"),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 16 / 2,
                          backgroundColor: Color(0xFFD1E7EE),
                          child: SvgPicture.asset(
                            "assets/icons/goclub.svg",colorFilter: ColorFilter.mode(blue3, BlendMode.srcIn),),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 35,
                  width: 35,
                  color: Colors.amber,
                ))
          ],
        ),
      ),
    );
  }
}
