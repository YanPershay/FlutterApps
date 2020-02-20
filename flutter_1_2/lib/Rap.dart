import 'package:first_project/Playing.dart';

import 'Music.dart';

class Rap extends Music implements Playing{
  Rap(String name, int length) : super(name, length);

  @override
  play(String name) {
    print("$name playing");
  }

}