// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'dart:math' as math;
class Recently extends StatefulWidget {
  const Recently({Key? key}) : super(key: key);

  @override
  State<Recently> createState() => _RecentlyState();
}

class _RecentlyState extends State<Recently> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 15,
            right: 15,
            child: InkWell(
                onTap: () {},
                child: Text(
                  "Sửa",
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                )),
          ),
          Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.white),
                        controller: tabController,
                        isScrollable: true,
                        labelPadding: EdgeInsets.symmetric(horizontal: 12),
                        tabs: [
                          Tab(
                            child: Text(
                              "Tất cả",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Gọi nhỡ",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Gần đây',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 20,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: ListTile(
                          leading: Icon(Icons.add_ic_call_rounded),
                          title: Text("Số điện thoại ${index + 1}"),
                          subtitle: Text("iPhone ${index + 1}"),
                          trailing: Transform.rotate(
                          angle: math.pi,
                          child: Icon(Icons.error_outline_sharp)),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Card(
                          margin:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: ListTile(
                            title: Text("Số điện thoại ${index + 1}"),
                            subtitle: Text("iPhone ${index + 1}"),
                            trailing: Icon(Icons.error_outline_sharp),
                          ),
                        );
                      }),
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
