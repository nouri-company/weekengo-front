import 'package:flutter/material.dart';
import 'package:weekengo_front/setting.dart';
import 'widget/square_card_button.dart';
import 'theme/color_palette.dart';
import 'widget/card_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('이번 주말에 뭐하지?'),
        titleTextStyle: const TextStyle(
          color: Color(ColorPalette.blue),
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Setting(),
                ),
              );
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                width: double.infinity,
                height: 150,
                child: const Placeholder(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                width: double.infinity,
                height: 150,
                child: const Placeholder(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: _overflowBarItems,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: const Color(ColorPalette.grey),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: const Text(
                        '이번 주말 Hot',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      height: 100.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          CardButton(
                            title: "관악 강감찬 축제",
                            eventType: "축제",
                            subTitle: "10/05 - 10/08",
                            likePeopleCount: "13",
                            webViewUrl: "https://www.ggcfest.com/",
                          ),
                          CardButton(
                            title: "안다미로",
                            eventType: "음식점",
                            subTitle: "10/05 - 10/08",
                            likePeopleCount: "13",
                            webViewUrl:
                                "https://m.place.naver.com/restaurant/1930066846/home?entry=pll",
                          ),
                          CardButton(
                            title: "관악 강감찬 축제",
                            eventType: "축제",
                            subTitle: "10/05 - 10/08",
                            likePeopleCount: "13",
                            webViewUrl: "https://velog.io",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: const Text(
                        '위켄고가 알려 주는 맛집 리스트',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      height: 150.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const <Widget>[
                          SquareCardButton(
                            title: "지역사랑상품권 매장",
                            description: "지역사랑상품권으로 가격 부담가지지 말고 놀아요!",
                          ),
                          SquareCardButton(
                            title: "공무원 회식 = 맛집",
                            description: "동네 숨은 맛집 찾기!\n공무원 회식 장소로 픽한 곳들 따라가기",
                          ),
                          SquareCardButton(
                            title: "백흑요리사 식당 모음",
                            description:
                                "천종원: 아니 이런 요리들은 누가 만든거야?\n???: 나야, 들기름",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItems,
        showUnselectedLabels: true,
        selectedItemColor: const Color(ColorPalette.blue),
        unselectedItemColor: const Color(ColorPalette.black),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  final OverflowBar _overflowBarItems = OverflowBar(
    alignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      GestureDetector(
        onTap: () {
          print("언젠가 버튼 인식");
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 20,
            ),
            Text('언젠가'),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          print("언젠가 버튼 인식");
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 20,
            ),
            Text('언젠가'),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          print("언젠가 버튼 인식");
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 20,
            ),
            Text('언젠가'),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          print("언젠가 버튼 인식");
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 20,
            ),
            Text('언젠가'),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          print("언젠가 버튼 인식");
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 20,
            ),
            Text('언젠가'),
          ],
        ),
      ),
    ],
  );
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '탐색',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '저장',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '기록',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '공유',
    ),
  ];
}
