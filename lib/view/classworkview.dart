import 'package:flutter/material.dart';

class ClassworkView extends StatelessWidget {
  const ClassworkView({super.key});

  Widget cardss(String links, String animalName) {
    return Card(
      color: const Color(0xffF9FBE7),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 250.0,
            child: Image(
              image: NetworkImage(links),
              width: 350.0,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            animalName,
            style: const TextStyle(
              fontFamily: "Dongle",
              fontSize: 45.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Card List',
          style: TextStyle(
            fontFamily: 'Dongle',
            fontSize: 35.0,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          cardss(
              'https://i.guim.co.uk/img/media/91a5272e78198c343c9ba124cd15f5c822f296c8/0_132_4896_2938/master/4896.jpg?width=620&quality=85&auto=format&fit=max&s=b8c9c8743bffbba12918212e9d4c27c5',
              'Sparrow'),
          cardss(
              'https://d1jyxxz9imt9yb.cloudfront.net/article/4638/meta_image/regular/elephant-calf-mom-IFAW_slash_B._Hollweg.jpg',
              'Elephant'),
          cardss(
              'https://www.sciencenews.org/wp-content/uploads/2021/08/082521_cw_hummingbird_feat.jpg',
              'Humming Bird'),
          cardss(
              'https://www.gannett-cdn.com/media/2022/03/16/USATODAY/usatsports/imageForEntry5-ODq.jpg?width=1200&disable=upscale&format=pjpg&auto=webp',
              'Lion'),
        ],
      ),
    );
  }
}
