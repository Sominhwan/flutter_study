import 'package:flutter/material.dart';
import 'package:flutter_cart/constants.dart';

// 사용하지 않음
class ProductSelectorButton extends StatelessWidget {
  final int id;
  final int selectedIconNum;
  final IconData mIcon;
  final Function changeIcon;

  const ProductSelectorButton(this.id, this.selectedIconNum, this.mIcon, this.changeIcon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectedIconNum ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(mIcon, color: Colors.black),
        onPressed: () {
          changeIcon(id);
        },
      ),
    );
  }
}
