import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
     
      /*
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1),
        elevation: 0,
        title: const Text(
          'Your Dribbox',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xFF22215B),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/icons/Union.png'))
        ],
      ),
      */
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: CustomScrollView(slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Color(0xFFF1F1F1),
            expandedHeight: 100,
            elevation: 0,
            title: const Text(
              'Your Dribbox',
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF22215B),
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                  onPressed: () {
                    Get.toNamed(Routes.PROFILE);
                  },
                  icon: Image.asset('assets/icons/Union.png'))
            ],
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/icons/Search Icon.png'),
                  labelText: "Search Folder",
                  border: OutlineInputBorder(),
                ),
              ),
              ListTile(
                title: Text(
                  "Recent",
                  style: TextStyle(fontSize: 15, color: Color(0xFF22215B)),
                ),
                trailing: Wrap(
                  alignment: WrapAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon:Icon(Icons.menu_sharp)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.grid_view_rounded))
                  ],
                ),
              ),
            ]),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.5,
            children: [
              FolderPanel(
                title: "Mobile Apps",
                subtitle: "December 20.2020",
                image: "assets/icons/Folder-415EB6.png",
              ),
              FolderPanel(
                title: "SVG Icons",
                subtitle: "December 14.2020",
                image: "assets/icons/Folder-FFB110.png",
                bgColor: Color(0xFFFFFBEC),
              ),
              FolderPanel(
                title: "Prototypes",
                subtitle: "November 22.2020",
                image: "assets/icons/Folder-AC4040.png",
                bgColor: Color(0xFFFEEEEE),
              ),
              FolderPanel(
                title: "Avatars",
                subtitle: "November 10.2020",
                image: "assets/icons/Folder-23B0B0.png",
                bgColor: Color(0xFFF0FFFF),
              ),
              FolderPanel(
                title: "Mobile Apps",
                subtitle: "December 20.2020",
                image: "assets/icons/Folder-415EB6.png",
              ),
              FolderPanel(
                title: "SVG Icons",
                subtitle: "December 14.2020",
                image: "assets/icons/Folder-FFB110.png",
                bgColor: Color(0xFFFFFBEC),
              ),
              FolderPanel(
                title: "Prototypes",
                subtitle: "November 22.2020",
                image: "assets/icons/Folder-AC4040.png",
                bgColor: Color(0xFFFEEEEE),
              ),
              FolderPanel(
                title: "Avatars",
                subtitle: "November 10.2020",
                image: "assets/icons/Folder-23B0B0.png",
                bgColor: Color(0xFFF0FFFF),
              ),
            ],
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 50,
          )),
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),backgroundColor:Color(0xFF22215B) ,),
    );
  }
}

class FolderPanel extends StatelessWidget {
  FolderPanel(
      {required this.title,
      required this.subtitle,
      required this.image,
      this.bgColor});

  String title;
  String subtitle;
  String image;
  Color? bgColor;

  @override
  Widget build(BuildContext context) {
    List<String> imgs = image.split("-");

    Color? clr;
    try {
      clr = Color(int.parse('0xFF${imgs[1].split(".")[0]}'));
    } catch (e) {}

    return Container(
      padding: EdgeInsets.all(0),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
          color: (bgColor == null) ? Color(0xFFEEF7FE) : bgColor,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                dense: true,
                leading: Image.asset('${image}'),
                trailing: Container(
                  padding: EdgeInsets.all(0),
                  width: 18,
                  height: 30,
                  child: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: clr ?? Color(0xFF415EB6),
                      )),
                )),
            Text(
              "${title}",
              style: TextStyle(
                color: clr ?? Color(0xFF415EB6),
                fontSize: 15,
              ),
            ),
            Text(
              "${subtitle}",
              style: TextStyle(
                color: clr ?? Color(0xFF415EB6),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
