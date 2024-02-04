import 'package:first/modules/modules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homepage extends StatelessWidget {
  homepage({super.key});

  List<Modules> category=[];
  void _getmodules(){
      category=Modules.getmodules();
  }

  @override
  Widget build(BuildContext context) {
    _getmodules();
    return Scaffold(
      appBar: appbar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          searchbar(),
           SizedBox(height: 40,),
          _category(),
          SizedBox(height: 40,),
          _recomendation(),
          SizedBox(height: 40,),
          _category(),
          SizedBox(height: 40,),
          _recomendation2(),

        ],
      ),

    );

  }

  Column _recomendation() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Recomendation\nfor Diet',
            style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),),
      ),
      const SizedBox(height: 15,),
      Container(
        height: 240,
        child: ListView.separated(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          separatorBuilder: (context,index) => SizedBox(width: 25,),
          itemBuilder: (context, index){
            return Container(
              width:240,
              decoration: BoxDecoration(
                color: category[index].boxcolor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height : 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: SvgPicture.asset(category[index].iconpath),
                    ),

                  ),
                  Text (
                    category[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 16,
                    ),

                  ),
                ],
              ),
            );
          },
        ),),
    ],
  );
  }
  Column _recomendation2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Recomendation\nfor Diet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),),
        ),
        const SizedBox(height: 15,),
        Container(
          height: 200,
          child: ListView.separated(
            itemCount: category.length,
            padding: EdgeInsets.only(
              top: 10,
            ),
            separatorBuilder: (context,index) => SizedBox(height: 20,),
            itemBuilder: (context, index){
              return Container(

                decoration: BoxDecoration(
                  color: category[index].boxcolor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height : 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: SvgPicture.asset(category[index].iconpath),
                      ),

                    ),
                    Text (
                      category[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 16,
                      ),

                    ),
                  ],
                ),
              );
            },
          ),),
      ],
    );
  }

  Column _category() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Category',
              style: TextStyle(
              color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                        ),),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 130,
              child: ListView.separated(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
  ),
                separatorBuilder: (context,index) => SizedBox(width: 25,),
                itemBuilder: (context, index){
                return Container(
                  width:100,
                  decoration: BoxDecoration(
                    color: category[index].boxcolor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width : 50,
                        height : 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset(category[index].iconpath),
                        ),

                      ),
                      Text (
                        category[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16,
                        ),

                      ),
                    ],
                  ),
                );
            },
            ),),
  ],
  );
  }

  Container searchbar() {
    return Container(
          margin: const EdgeInsets.only(top: 40, left: 20,right: 20,),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              )
            ]
          ),
        child : TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(15),
          hintText: 'Search Panecake',
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 165, 164, 164),
            fontSize: 17,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset('assets/icons/search.svg'
            ),
          ),
          suffixIcon: SizedBox(
            width: 70,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    color: Colors.black,
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset('assets/icons/filter.svg'),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,

          ),

        ),
        ),
        );
  }
  AppBar appbar(){
  return AppBar(
  title:const Text('Breakfest'),
  centerTitle: true,
  leading : GestureDetector(
  onTap:(){},
  child: Container(
  alignment: Alignment.center,
  margin : const EdgeInsets.all(10),
  decoration: BoxDecoration(
  color: const Color(0xffF7F8F8),
  borderRadius: BorderRadius.circular(10),

  ),
  child: SvgPicture.asset(
  'assets/icons/back-svgrepo-com.svg',
  height: 20,
  width: 20,),),
  ),
  actions: [
  GestureDetector(
  onTap: () {

  },    child : Container(
  alignment: Alignment.center,
  width: 37,
  margin : const EdgeInsets.all(10),
  decoration: BoxDecoration(
  color: const Color(0xffF7F8F8),
  borderRadius: BorderRadius.circular(10),
  ),
  child: SvgPicture.asset(
  'assets/icons/menu-svgrepo-com.svg',
  height: 20,
  width: 20,
  ),
  ),
  ),],

  );
  }}
