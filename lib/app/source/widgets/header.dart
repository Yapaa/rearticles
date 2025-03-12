import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rearticles/app/source/constants/constant.dart';

import '../../modules/Users/views/users_view.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: defaultColor,
      ),
      width: size.width,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Hallo, Yapa",
              style: TextStyle(
                  color: textColor1, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                color: const Color.fromARGB(255, 53, 206, 253),
                child: Text(
                  "sppu3546@gmail.com",
                  style: TextStyle(fontSize: 14, color: textColor1),
                ),
              ),
            ),
          ]),
          // Photo User
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => UsersView()));
            },
            child: Container(
              width: 55.33,
              height: 55.33,
              child: CircleAvatar(
                backgroundImage: AssetImage(img_2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
