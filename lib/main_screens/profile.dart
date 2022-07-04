import 'dart:io';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            height: 215,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue.shade100,
                Colors.indigo,
              ]),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.black87,
                expandedHeight: 140,
                flexibleSpace: LayoutBuilder(
                  builder: (context, conststraints) {
                    return FlexibleSpaceBar(
                      centerTitle: true,
                      title: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: conststraints.biggest.height <= 120 ? 1 : 0,
                        child: const Text(
                          'Account',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      background: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.blue.shade100,
                            Colors.indigo,
                          ]),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 18, left: 18),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/inapp/guest.jpg'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text(
                                'guest'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30))),
                              child: TextButton(
                                child: SizedBox(
                                  height: 40,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: Center(
                                    child: Text(
                                      'Cart',
                                      style: TextStyle(
                                          color: Colors.blue.shade300,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              color: Colors.blue.shade300,
                              child: TextButton(
                                child: SizedBox(
                                  height: 40,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: const Center(
                                    child: Text(
                                      'Orders',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                              child: TextButton(
                                child: SizedBox(
                                  height: 40,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: Center(
                                    child: Text(
                                      'Wishlist',
                                      style: TextStyle(
                                          color: Colors.blue.shade300,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 150,
                              child: Image(
                                  image: AssetImage('images/inapp/logo.jpg')),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: ProfileHeaderLabel(
                                headerLabel: 'Account Info',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  children: const [
                                    RepeatedListTile(
                                      title: 'Email Address',
                                      subTitle: 'umar.fajar14@gmail.com',
                                      icon: Icons.email,
                                    ),
                                    BlueDivider(),
                                    RepeatedListTile(
                                      title: 'Phone Number',
                                      subTitle: '087773646396',
                                      icon: Icons.phone,
                                    ),
                                    BlueDivider(),
                                    RepeatedListTile(
                                      title: 'Address',
                                      subTitle: 'West Java',
                                      icon: Icons.location_on,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const ProfileHeaderLabel(
                                headerLabel: 'Account Settings'),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  children: [
                                    RepeatedListTile(
                                      title: 'Edit Profile',
                                      subTitle: '',
                                      icon: Icons.edit,
                                      onPressed: () {},
                                    ),
                                    const BlueDivider(),
                                    RepeatedListTile(
                                      title: 'Change Password',
                                      icon: Icons.lock,
                                      onPressed: () {},
                                    ),
                                    const BlueDivider(),
                                    RepeatedListTile(
                                      title: 'Logout',
                                      icon: Icons.logout,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BlueDivider extends StatelessWidget {
  const BlueDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Divider(
        color: Colors.blue.shade900,
        thickness: 1,
      ),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function()? onPressed;
  const RepeatedListTile(
      {Key? key,
      required this.title,
      this.subTitle = '',
      required this.icon,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const ProfileHeaderLabel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 40,
            width: 80,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            headerLabel,
            style: const TextStyle(
                color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: SizedBox(
              height: 40,
              width: 80,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
