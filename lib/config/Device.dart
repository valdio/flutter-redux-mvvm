import 'package:flutter/cupertino.dart';

class Device {
  BuildContext context;

  Device(this.context);

  double get width => MediaQuery.of(this.context).size.width;

  double get height => MediaQuery.of(this.context).size.height;
}
