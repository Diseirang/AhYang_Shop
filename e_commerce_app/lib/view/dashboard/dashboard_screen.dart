import 'package:e_commerce_app/controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (controller) => Scaffold(
              body: SafeArea(
                child: IndexedStack(index: controller.tabIndex, children: [
                  Container(
                    color: Colors.white,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.orange,
                  ),
                ]),
              ),
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: .2,
                    ),
                  ),
                ),
                child: SnakeNavigationBar.color(
                  behaviour: SnakeBarBehaviour.floating,
                  snakeShape: SnakeShape.circle,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  unselectedLabelStyle: const TextStyle(fontSize: 11),
                  snakeViewColor: Theme.of(context).primaryColor,
                  unselectedItemColor: Theme.of(context).colorScheme.secondary,
                  //showSelectedLabels: true,
                  showUnselectedLabels: true,
                  currentIndex: controller.tabIndex,
                  onTap: (value) {
                    controller.updateIndex(value);
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                        ),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.category,
                        ),
                        label: 'Category'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.menu,
                        ),
                        label: 'Menu'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.account_circle,
                        ),
                        label: 'Account')
                  ],
                ),
              ),
            ));
  }
}
