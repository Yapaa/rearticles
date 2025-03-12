import 'package:flutter/material.dart';
import 'package:rearticles/app/modules/Articles/views/detail_article_view.dart';
import 'package:rearticles/app/source/constants/constant.dart';
import 'package:rearticles/app/source/models/Models.dart';

class ArticleUserView extends StatelessWidget {
  const ArticleUserView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                itemCount: article.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 220,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (BuildContext context, index) {
                  final articleId = article[index];
                  return Container(
                    height: size.height,
                    width: 220,
                    child: Container(
                      decoration: BoxDecoration(
                        color: BgColor,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.250),
                              blurRadius: 5,
                              offset: Offset(0, 4))
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailArticleView(article: articleId),
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
                                    article[index].title,
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
                                      article[index].body,
                                      overflow: TextOverflow.clip,
                                      maxLines: 1,
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Wrap(
                                spacing: 5,
                                children: article[index].listTags.map((tag) {
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
                  );
                }),
          ],
        ),
      ),
    );
  }
}
