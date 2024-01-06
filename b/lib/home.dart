import 'package:b/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Radio Button"))),
      body: Column(
        children: [
          const Text(
            "Selected Color",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Card(
            child: RadioListTile<Color>(
                title: const Text("green "),
                value: Colors.green,
                groupValue:
                    Provider.of<ChangeColorProvidfer>(context).selectedcolor,
                onChanged: (color) {
                  Provider.of<ChangeColorProvidfer>(context, listen: false)
                      .ChangeColor(color!);
                }),
          ),
          Card(
            child: RadioListTile<Color>(
                title: const Text("teal"),
                value: Colors.teal,
                groupValue:
                    Provider.of<ChangeColorProvidfer>(context).selectedcolor,
                onChanged: (color) {
                  Provider.of<ChangeColorProvidfer>(context, listen: false)
                      .ChangeColor(color!);
                }),
          ),
          Card(
            child: RadioListTile<Color>(
                title: const Text("yellow"),
                value: Colors.yellow,
                groupValue:
                    Provider.of<ChangeColorProvidfer>(context).selectedcolor,
                onChanged: (color) {
                  Provider.of<ChangeColorProvidfer>(context, listen: false)
                      .ChangeColor(color!);
                }),
          )
        ],
      ),
    );
  }
}
