import 'dart:html';

import 'package:params/client.dart';
import 'package:polymer/polymer.dart';

DivElement content = querySelector("#button");

void main() {
  querySelector("#warning").remove();
  initPolymer().run(() {
    Polymer.onReady.then((e) {     
      initParams();
    });
  });
}

  