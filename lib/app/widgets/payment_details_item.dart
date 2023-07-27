
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentDetailsItem extends StatelessWidget {
  const PaymentDetailsItem({
    super.key,
    required this.leadingKeyText,
    required this.trailingValueText,
    required this.isKeyGrey,
    required this.showBottomDivider,
  });

  final String leadingKeyText;
  final String trailingValueText;
  final bool isKeyGrey;
  final bool showBottomDivider;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: showBottomDivider
            ? const Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),
              )
            : null,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        leading: Text(
          leadingKeyText,
          style: TextStyle(
            color: isKeyGrey ? Colors.grey : Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        trailing: SizedBox(
          width: Get.size.width*0.6,
          child: Text(
            trailingValueText,
            textAlign: TextAlign.right,
            overflow: TextOverflow.fade,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15,
        
            ),
          ),
        ),
      ),
    );
  }
}
