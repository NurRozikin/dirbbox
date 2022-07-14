import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      /*
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1),
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 16, color: Color(0xFF22215B)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Color(0xFF22215B),
              ))
        ],
      ),
      */
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Color(0xFFF1F1F1),
          iconTheme: IconThemeData(color: Color(0xFF22215B)),
          elevation: 0,
          title: const Text(
            'My Profile',
            style: TextStyle(fontSize: 16, color: Color(0xFF22215B)),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Color(0xFF22215B),
                ))
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 315,
                  height: 209,
                  padding: EdgeInsets.all(20),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Profile Image.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Neelesh Chaudhary",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF22215B),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "UI / UX Designer",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF22215B)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF22215B),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                      Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xFFFF317B),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "PRO",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                title: Text(
                  "My Folders",
                  style: TextStyle(fontSize: 15, color: Color(0xFF22215B)),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/Add.png')),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/Settings.png')),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/Vector.png'))
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 280,
            child: ListView.builder(
                itemExtent: Get.width,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Center(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 15,
                      runSpacing: 15,
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
                      ],
                    ),
                  );
                },
                itemCount: ((7 / 4).round())),
          ),
        ),
        SliverToBoxAdapter(
            child: Column(children: [
          ListTile(
            title: Text(
              "Recent Uploads",
              style: TextStyle(fontSize: 15, color: Color(0xFF22215B)),
            ),
            trailing: Wrap(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/Sort.png'))
              ],
            ),
          ),
        ])),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ListTile(
              leading: Image.asset('assets/icons/Word Icon.png'),
              title: Text("Project.docx"),
              subtitle: Text("Novemaber 22.2020"),
              trailing: Text("300kb"),
            );
          },
          childCount: 2,
        )),
      ]),
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
