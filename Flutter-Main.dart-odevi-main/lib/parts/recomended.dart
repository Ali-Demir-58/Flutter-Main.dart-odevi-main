import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecomendedPage extends StatefulWidget {
  const RecomendedPage({
    super.key,
    required this.title,
    required this.pitcureadress,
    required this.usdFiyat,
    required this.percentageoff,
    required this.rating,
    required this.stock,
    required this.oldprice,
    });
  
  final String title;
  final String pitcureadress;
  final double usdFiyat;
  final double percentageoff;
  final double rating;
  final double stock;
  final double oldprice;

  @override
  State createState() => _MainPageProductWidgetState();
    
  /* 
  Üstteki fonksiyonun uzun versiyonu
  State createState() {
  return _MainPageProductWidgetState();
  } 
  */
}

bool isfavorite = false;


class _MainPageProductWidgetState extends State<RecomendedPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Card(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.pitcureadress,
                  height: 180,
                ),
                const Positioned.fill(
                  child: Center(
                    child: Icon(Icons.favorite),
                  ),
                ),
              ],
            ),
            Text(widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "\$${widget.usdFiyat} ",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                ),
                Text(
                  "\$${widget.oldprice} ",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 10,
                  ),
                ),
                Text("${widget.percentageoff}% OFF",
                style: TextStyle(
                  color: Colors.orange,
                ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Image.asset("assets/Rating-Icon.png"),
                SizedBox(width: 6,),
                Text("${widget.rating} ",
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
                Text("(${widget.stock})",
                style: TextStyle(
                  color: Colors.grey,
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
