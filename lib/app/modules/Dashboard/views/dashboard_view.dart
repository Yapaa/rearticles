// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rearticles/app/modules/Articles/views/detail_article_view.dart';
import 'package:rearticles/app/source/constants/constant.dart';
import 'package:rearticles/app/source/models/Models.dart';
import 'package:rearticles/app/source/widgets/GridArticle.dart';
import 'package:rearticles/app/source/widgets/header.dart';
import 'package:rearticles/app/source/widgets/navigation.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              // Slider Article
              Divider(
                color: Color.fromARGB(226, 155, 155, 155),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Title(
                    color: Colors.black,
                    child: Text(
                      "New Articles",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ),
              Container(
                child: Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      disableCenter: true,
                      height: 220,
                      viewportFraction: 0.6,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 100),
                      autoPlay: true,
                      enlargeCenterPage: true,
                    ),
                    items: article
                        .map(
                          (item) => Container(
                    height: size.height,
                    width: 220,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 16,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailArticleView(article: item),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Image.network(
                                  img_net,
                                  height: 150,
                                  width: size.width,
                                  fit: BoxFit.fitWidth,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Text(
                                    item.title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.body,
                                    overflow: TextOverflow.clip,
                                    maxLines: 1,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Wrap(
                                spacing: 5,
                                children: item.listTags.map((tag) {
                                  return Container(
                                    child: Text(
                                      '#${tag}',
                                      style:
                                          TextStyle(color: Color(0xFF2136F3)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                        )
                        .toList(),
                  ),
                ),
              ),
              // Title 'Grid Article'
              SizedBox(height: 15),
              Divider(
                color: Color.fromARGB(226, 155, 155, 155),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Title(
                    color: Colors.black,
                    child: Text(
                      "All Articles",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ),
              // GridView All Article
              GridArticle(),
            ],
          ),
        ),
        // Button Navigasi
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DashboardView()));
          },
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 40,
          ),
          shape: CircleBorder(),
          backgroundColor: Color(0xFF000629),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: NavigationBottomBar());
  }
}
