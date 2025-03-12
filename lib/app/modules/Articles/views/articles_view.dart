import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rearticles/app/modules/Articles/views/detail_article_view.dart';
import 'package:rearticles/app/modules/Dashboard/views/dashboard_view.dart';
import 'package:rearticles/app/source/widgets/GridArticle.dart';
import '../controllers/articles_controller.dart';

class ArticlesView extends GetView<ArticlesController> {
  const ArticlesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArticlesView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: size.width,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(color: Color(0xFF000629)),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text('List Tags',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TaggedArticlesScreen(tag: '',)));
                            },
                            child: Text('Essay',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                          Text('tags..?',
                              style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Color.fromARGB(226, 155, 155, 155),
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              child: GridArticle(),
            ),
          ],
        ),
      ),
    );
  }
}
