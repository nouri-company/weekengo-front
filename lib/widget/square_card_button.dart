import 'package:flutter/material.dart';
import 'package:weekengo_front/event_listView.dart';
import '/event_webview.dart';
import '/theme/color_palette.dart';

class SquareCardButton extends StatefulWidget {
  const SquareCardButton({
    super.key,
    this.imageUrl = "",
    this.title = "",
    this.webViewUrl = "",
    this.description = "",
  });

  final String imageUrl;
  final String title;
  final String webViewUrl;
  final String description;

  @override
  State<SquareCardButton> createState() => _SquareCardButtonState();
}

class _SquareCardButtonState extends State<SquareCardButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 140,
      child: GestureDetector(
        onTap: () {
          if (widget.webViewUrl != "") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventWebView(url: widget.webViewUrl),
              ),
            );
          }
          if (widget.description != "") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventListView(
                  title: widget.title,
                  description: widget.description,
                ),
              ),
            );
          }
        },
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.all(4),
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
                flex: 1,
                child: Text(widget.title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
