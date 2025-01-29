import 'package:flutter/material.dart';
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
                         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    
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
    );
  }
}
