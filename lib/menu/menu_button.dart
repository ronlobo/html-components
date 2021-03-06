import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('h-menu-button')
class MenuButtonComponent extends PolymerElement {
  
  @published String label = '';
  
  MenuButtonComponent.created() : super.created();
  
  @override
  void enteredView() {
    super.enteredView();
    
    $['menubar'].on['selected'].listen((CustomEvent event) {
      $['menubar'].classes.toggle('hidden');
    });
  }
  
  void onButtonMouseOver(MouseEvent event, var detail, Element target) {
    target.classes.add('hover');
  }
  
  void onButtonMouseOut(MouseEvent event, var detail, Element target) {
    target.classes.remove('hover');
  }
  
  void onButtonClicked() {
    $['menubar'].classes.toggle('hidden');
  }
  
}