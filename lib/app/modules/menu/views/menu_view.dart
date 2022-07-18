import 'package:dirbbox/app/modules/home/bindings/home_binding.dart';
import 'package:dirbbox/app/modules/home/views/home_view.dart';
import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      /*
      appBar: AppBar(
        title: Text('MenuView'),
        centerTitle: true,
      ),
      */
      body: CustomScrollView(
        slivers: [
          
          SliverToBoxAdapter(
          child: Container(
              height: 150,
              width: Get.width,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/bgmenu.png"),fit: BoxFit.contain, alignment: Alignment.centerLeft)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ListTile(
                leading: Image.asset("assets/images/Profile Image.png"),
                title: Text("Neelesh"),
                subtitle: Text("Seattle, Washington"),
                trailing: IconButton(onPressed: (){
                  //Get.offNamed(Routes.MENUCLOSE);
                 off(HomeView(), Transition.rightToLeft);
                }, icon: FaIcon(FontAwesomeIcons.xmark, size: 34,)),
            ),
              ),)),
          

          /*
          SliverAppBar(
            backgroundColor:Color(0xFFE5E5E5) ,
            toolbarHeight: 127,
            flexibleSpace: Container(
                height: 147,
                width: 240,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/bgmenu.png"),fit: BoxFit.contain, alignment: Alignment.centerLeft)
                ),
            ),
            title: ListTile(
                leading: Image.asset("assets/images/Profile Image.png"),
                title: Text("Neelesh"),
                subtitle: Text("Seattle, Washington"),
                trailing: IconButton(onPressed: (){
                  Get.toNamed(Routes.HOME);
                }, icon: FaIcon(FontAwesomeIcons.xmark, size: 34,)),
            ),),
            */
            SliverToBoxAdapter(
              child: SizedBox(height: 30)
            ),
            SliverList(delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    Container(width:5,height: 55, color: Colors.blue, 
                  ),
                    ListTile(
                      title: Text("Home", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),
                Divider(height: 2, thickness: 1,),
               
               Stack(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.offNamed(Routes.HOME);
                        Get.toNamed(Routes.PROFILE);
                      },
                      title: Text("Profile"),
                    ),
                  ],
                ),
                Divider(height: 2, thickness: 1,),

                Stack(
                  children: [
                    ListTile(
                      title: Text("Storage"),
                    ),
                  ],
                ),
                Divider(height: 2, thickness: 1,),

                Stack(
                  children: [
                    ListTile(
                      title: Text("Shared"),
                    ),
                  ],
                ),
                Divider(height: 2, thickness: 1,),

                Stack(
                  children: [
                    ListTile(
                      title: Text("Stats"),
                    ),
                  ],
                ),
                Divider(height: 2, thickness: 1,),

                Stack(
                  children: [
                    ListTile(
                      title: Text("Settings"),
                    ),
                  ],
                ),
                Divider(height: 2, thickness: 1,),

                Stack(
                  children: [
                    ListTile(
                      title: Text("Help"),
                    ),
                  ],
                ),
                Divider(height: 2, thickness: 1,),

                SizedBox(height: 10),
                
                GestureDetector(
                  onTap: () => Get.offAllNamed(Routes.LOGIN),
                  child:  SizedBox(
                      height: 40,
                      width: Get.width,
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.powerOff),
                          SizedBox(width: 5,),
                          Text("Logout", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFF1B1D28),)),
                        ])
                    )
                
                  
                
                )
              ]
            ))        
          ],
      ),
    );
  }

  static Future<dynamic> off(dynamic page,Transition? transition, {dynamic arguments}) async {
    Get.off(
      page,
      arguments: arguments,
      binding: HomeBinding(),
      transition: transition ?? Transition.leftToRightWithFade,
      duration: const Duration(milliseconds: 250),
    );
  }
}

