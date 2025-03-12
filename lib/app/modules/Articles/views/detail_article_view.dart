import 'package:flutter/material.dart';
import 'package:rearticles/app/source/constants/constant.dart';
import 'package:rearticles/app/source/models/Models.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DetailArticleView extends StatelessWidget {
  Article article;
  DetailArticleView({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read'),
        centerTitle: false,
        actions: [
          ToggleSwitch(
            minWidth: 120,
            initialLabelIndex: 1,
            cornerRadius: 20.0,
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.white,
            totalSwitches: 2,
            labels: ['Publish', 'Unpublished'],
            activeBgColors: [
              [Colors.blue],
              [Colors.red]
            ],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                    color: Colors.black,
                    child: Text(
                      article.title,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              // Body
              Divider(
                color: Color.fromARGB(226, 155, 155, 155),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(article.body),
              ),
              // ListTag
              Divider(
                color: Color.fromARGB(226, 155, 155, 155),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Wrap(
                      spacing: 5,
                      children: article.listTags.map((tag) {
                        return GestureDetector(
                          onDoubleTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TaggedArticlesScreen(tag: tag),
                              ),
                            );
                          },
                          child: Text(
                            '#${tag}',
                            style: TextStyle(color: Color(0xFF2136F3)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaggedArticlesScreen extends StatelessWidget {
  final String tag;

  TaggedArticlesScreen({required this.tag});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final taggedArticles =
        article.where((article) => article.listTags.contains(tag)).toList();

    return Scaffold(
      appBar: AppBar(title: Text('Articles tagged with #$tag')),
      body: GridView.builder(
        itemCount: taggedArticles.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisExtent: 220,
            mainAxisSpacing: 5),
        itemBuilder: (BuildContext context, index) {
          final article = taggedArticles[index];
          return Container(
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
                      builder: (context) => DetailArticleView(article: article),
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
                            article.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              article.body,
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                              softWrap: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
