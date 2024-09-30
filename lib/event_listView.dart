import 'package:flutter/material.dart';
import 'package:weekengo_front/widget/card_button.dart';

class EventListView extends StatefulWidget {
  const EventListView({super.key, this.title = "", this.description = ""});

  final String title;
  final String description;

  @override
  State<EventListView> createState() => _EventListViewState();
}

class _EventListViewState extends State<EventListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ios_share_outlined),
          ),
        ],
        // X, 하트, 주말 추가 버튼
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14.0),
        child: ListView(
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              widget.description,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Column(
              children: _cardButtons,
            ),
          ],
        ),
      ),
    );
  }

  final List<CardButton> _cardButtons = <CardButton>[
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
    CardButton(
      title: "관악 강감찬 축제",
      eventType: "축제",
      subTitle: "10/05 - 10/08",
      likePeopleCount: "13",
      webViewUrl: "https://naver.com",
    ),
  ];
}
