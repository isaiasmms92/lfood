import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 6, vsync: this);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                text: 'Inicio',
              ),
              Tab(
                text: 'Restaurantes',
              ),
              Tab(
                text: 'Mercados',
              ),
              Tab(
                text: 'Bebidas',
              ),
              Tab(
                text: 'Farmacias',
              ),
              Tab(
                text: 'Pets',
              ),
            ],
            isScrollable: true,
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black54,
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Container(color: Colors.indigo),
            Container(color: Colors.green),
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.yellow),
            Container(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
