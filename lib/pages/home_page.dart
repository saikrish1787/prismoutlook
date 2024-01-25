import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color(0xff1B3065),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Image.asset("assets/images/hamb_menu.png",
                width: 25, height: 20),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        height: 200,
        color: const Color(0xff1B3065),
        child:const Center(
          child: Column(children: [
            Text("Total Revenue",style: TextStyle(color: Colors.white,fontSize: 14),),
            Text("5,543",style: TextStyle(color: Colors.white,fontSize: 30),),
            Text("Dec 03,2023",style: TextStyle(color: Colors.white),)
          ]),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xff1B3065),
        items: const [
        Icon(Icons.home),
        Icon(Icons.notifications),
        Icon(Icons.add),
        Icon(Icons.search),
        Icon(Icons.menu),
      ],

      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
      ),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }
  Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 6,
        left: 13,
        right: 13,
      ),
      color: Color(0xff1B3065),
      height: 150,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 46,
                  width: 46,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                        child: Text(
                      "SK",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff262626)),
                    )),
                  )),
              const SizedBox(
                width: 13,
              ),
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Use prism as",
                      style: TextStyle(color: Color(0xffe0e0e0), fontSize: 13),
                    ),
                    Text(
                      "Sai Krishna",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Last logged time - 03 Jan, 2024",
                style: TextStyle(color: Color(0xffe0e0e0), fontSize: 13),
              ),
              TextButton(
                  onPressed: () => {},
                  child: const Text(
                    "Signout",
                    style: TextStyle(color: Color(0xff68D6FF)),
                  ))
            ],
          )
        ],
      ));

  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home",
                style: TextStyle(
                    color: Color(0xff1B3065),
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.contacts_outlined),
            title: const Text("Contacts",
                style: TextStyle(
                    color: Color(0xff1B3065),
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.list_alt),
            title: const Text("Account List",
                style: TextStyle(
                    color: Color(0xff1B3065),
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.mark_email_read_rounded),
            title: const Text("Readership",
                style: TextStyle(
                    color: Color(0xff1B3065),
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.login_outlined),
            title: const Text("Login Interaction",
                style: TextStyle(
                    color: Color(0xff1B3065),
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Prism alerts",
                style: TextStyle(
                    color: Color(0xff1B3065),
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            onTap: () => Navigator.pushNamed(context, "/alert")
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Settings",
                style: TextStyle(
                    color: Color(0xff1B3065),
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            onTap: () => {},
          )
        ],
      );
}