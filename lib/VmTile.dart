//VmTile.dart
import 'package:flutter/material.dart';

Widget vmtile(String name, String os, String type, Color color) {
  return new ListTile(
    leading: CircleAvatar(
      backgroundColor: color,
      child: Text(
        os.substring(0, 1).toUpperCase(),
      ),
      foregroundColor: Colors.white,
    ),
    title: Text(name),
    subtitle: Text(os + " - " + type),
    trailing: Icon(Icons.arrow_forward),
    onTap: () {},
  );
}
//vmtile("linux", "dahliaOS 200804", "QEMU/KVM", Colors.deepOrange),