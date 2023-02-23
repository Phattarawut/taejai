import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/project.dart';

class TargetWidget extends StatelessWidget {
  var descriptionStyle =
  const TextStyle(fontSize: 12.0, color: Colors.black54);
  var amountStyle = const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.black54);

  TargetWidget({
    Key? key,
    required this.project
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,###,000');
    var target = formatter.format(project.targetAmount);
    var percentText = ((project.receiveAmount / project.targetAmount) * 100)
        .toStringAsFixed(0);
    var percent = int.tryParse(percentText);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'เป้าหมาย',
                  style: descriptionStyle,
                ),
                Text(
                  '$target บาท',
                  style: amountStyle,
                ),
              ],
            ),
            Text(
              '$percentText %',
              style: amountStyle,
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: percent!,
              child: Container(
                height: 10.0,
                margin: const EdgeInsets.symmetric(
                    vertical: 5.0, horizontal: 0.0),
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 100 - percent,
              child: Container(
                height: 10.0,
                margin: const EdgeInsets.symmetric(
                    vertical: 5.0, horizontal: 0.0),
                color: const Color(0xFFCCCCCC),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('${project.duration} วัน', style: descriptionStyle),
            Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 14.0,
                ),
                Text('${project.donateCount}',
                    style: descriptionStyle),
              ],
            ),
          ],
        )
      ],
    );
  }
}
