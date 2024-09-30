import 'package:flutter/material.dart';
import 'package:weekengo_front/event_webview.dart';
import '/theme/color_palette.dart';

class CardButton extends StatefulWidget {
  CardButton({
    super.key,
    this.eventType = "",
    this.imageUrl = "",
    this.title = "",
    this.subTitle = "",
    this.likePeopleCount = "",
    this.appealText = "",
    this.address = "",
    this.webViewUrl = "",
    this.tags = const [],
  });

  final String eventType;
  final String imageUrl;
  final String title;
  final String subTitle;
  final String likePeopleCount;
  final String appealText;
  final String address;
  final String webViewUrl;
  List<String> tags;

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth - 10,
      height: 100, // 높이는 필요에 따라 조정
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 2, 10, 2),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(ColorPalette.grey),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 9,
              child: GestureDetector(
                onTap: () {
                  if (widget.webViewUrl != "") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            EventWebView(url: widget.webViewUrl),
                      ),
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 1,
                        color: Color(ColorPalette.grey),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          // clipBehavior: Clip.antiAlias,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://picsum.photos/seed/picsum/400',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(4, 3, 4, 3),
                          child: Column(
                            // mainAxisSize: MainAxisSize.max,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.title),
                              Text(widget.eventType),
                              Text(widget.subTitle),
                              Text('${widget.likePeopleCount}명이 이번 주말 일정으로 추가'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                  Container(
                    width: double.infinity,
                    height: 1,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color(ColorPalette.grey),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("저장 버튼 인식");
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_location_alt_outlined,
                          size: 20,
                        ),
                        Text('저장'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
