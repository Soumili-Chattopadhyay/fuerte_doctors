import 'package:flutter/material.dart';

class HomeServiceCards extends StatefulWidget {
  Image? cardIcon;
  String? cardTitle;
  HomeServiceCards({
    this.cardIcon,
    this.cardTitle,
    super.key,
  });

  @override
  State<HomeServiceCards> createState() => _HomeServiceCardsState();
}

class _HomeServiceCardsState extends State<HomeServiceCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 12.0, 8.0, 5.0),
          height: 65.0,
          width: 65.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFFC7DFE3),
                Color(0xFFDFEDEE),
              ],
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF86B8BF),
            ),
            child: (widget.cardIcon == null)
                ? const Icon(Icons.medical_services_outlined)
                : Image.asset('${widget.cardIcon}'),
          ),
        ),
        Text(
          widget.cardTitle ?? 'Untitled',
          textScaleFactor: 0.9,
          style: const TextStyle(
            color: Color(0xFF9E9E9E),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
