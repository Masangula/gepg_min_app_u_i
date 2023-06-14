import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        top: 5,
        left: 5,
        right: 5,
        bottom: 10,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.blueGrey,
              width: 0.5,
            ),
          ),
          child: const Icon(
            Icons.location_city,
            color: Colors.orange,
            size: 30,
          ),
        ),
        const Column(
          children: [
            Text(
              "Control Number",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Text(
              "998602034976",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "-TZS 100",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Text(
              // DateFormat("HH:mm MMM dd, yyyy").format(DateTime.now()).toString(),
              "13:31 Jun 14, 2023",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
