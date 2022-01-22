

import 'package:dashboard_ui/ui/widgets/logo_item.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.clear), onPressed: () {
                    Navigator.pop(context);
                  },),
                  LogoItem(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
