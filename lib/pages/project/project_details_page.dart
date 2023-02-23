import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:taejai/models/project.dart';
import '../../widgets/target_widget.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;
  var formatter = NumberFormat('#,###,000');

  ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        project.title,
        overflow: TextOverflow.ellipsis,
      )),
      body: ListView(
        children: [
          Container(
            color: const Color(0x4CB8D9FD),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    style: const TextStyle(fontSize: 30.0),
                  ),
                  Image.network(
                    project.imageUrl,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8.0),
                  Text(project.description),
                  const SizedBox(height: 8.0),
                  Text(project.durationText),
                  const SizedBox(height: 8.0),
                  Text(project.area),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('ยอดบริจาคขณะนี้'),
                Text(
                  '${formatter.format(project.receiveAmount)} บาท',
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                TargetWidget(project: project),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.heart,
                          size: 15.0,
                        ),
                        Text(
                          ' ร่วมบริจาค',
                          style: TextStyle(fontSize: 15.0),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.cartArrowDown,
                          size: 15.0,
                        ),
                        Text(
                          ' หยิบใส่ตะกร้า',
                          style: TextStyle(fontSize: 15.0),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: 1.0,
          ),
          Column(
            children: [
              const SizedBox(height: 16.0),
              const Text('แชร์ให้เพื่อน'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      splashRadius: 16.0,
                      icon: const FaIcon(FontAwesomeIcons.line)),
                  IconButton(
                      onPressed: () {},
                      splashRadius: 16.0,
                      icon: const FaIcon(FontAwesomeIcons.facebook)),
                  IconButton(
                      onPressed: () {},
                      splashRadius: 16.0,
                      icon: const FaIcon(FontAwesomeIcons.twitter))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
