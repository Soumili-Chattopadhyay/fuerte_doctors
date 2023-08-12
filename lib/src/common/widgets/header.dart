import 'package:flutter/material.dart';
import 'package:fuerte_doctors/src/common/colors.dart';

class Header1 extends StatefulWidget {
  String title;
  Header1({
    required this.title,
    super.key,
  });

  @override
  State<Header1> createState() => _Header1State();
}

class _Header1State extends State<Header1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
      child: Row(
        children: <Widget>[
          Text(
            widget.title,
            textScaleFactor: 0.9,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
              letterSpacing: 0.9,
            ),
          ),
          const Spacer(),
          const Text(
            'See all',
            textScaleFactor: 0.9,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.buttonActive,
              letterSpacing: 0.9,
            ),
          ),
        ],
      ),
    );
  }
}
