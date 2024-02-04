import 'package:flutter/material.dart';
class Modules{
  String name;
  String iconpath;
  Color boxcolor;
      Modules({
    required this.name,
    required this.iconpath,
    required this.boxcolor,
});
       static List<Modules> getmodules(){
        List<Modules> category =[];
        category.add(
          Modules(name: 'salad',
              iconpath: 'assets/icons/img1.svg',
              boxcolor: Color(0xff92A3FD))
        );
        category.add(
            Modules(name: 'salad',
                iconpath: 'assets/icons/img1.svg',
                boxcolor: Color(0xfffd92f2))
        );
        category.add(
            Modules(name: 'salad',
                iconpath: 'assets/icons/img1.svg',
                boxcolor: Color(0xff92A3FD))
        );
        category.add(
            Modules(name: 'salad',
                iconpath: 'assets/icons/img1.svg',
                boxcolor: Color(0xfffd92f2))
        );
        return category;
      }

}