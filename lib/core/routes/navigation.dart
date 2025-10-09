import 'package:flutter/material.dart';

pushTo(BuildContext context, Widget newScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => newScreen));
}

pushReplacementTo(BuildContext context, Widget newScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => newScreen));
}

pop(BuildContext context) {
  Navigator.pop(context);
}
