import 'package:basic_widgets/component/custom_container.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  String appbarTitle;

  TabBarScreen({required this.appbarTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(appbarTitle),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.tag_faces),
              ),
              Tab(
                text: '메뉴',
              ),
              Tab(
                icon: Icon(Icons.info_outline),
                text: 'information',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CustomContainer(color: Colors.red),
            CustomContainer(color: Colors.yellow),
            CustomContainer(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
