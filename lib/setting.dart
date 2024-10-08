import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weekengo_front/theme/color_palette.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            _userInfo("닉네임"),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              width: double.infinity,
              height: 40,
              child: const Text(
                '어플리케이션 설정',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              width: double.infinity,
              height: 44,
              margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 8,
                    child: Text(
                      '알림',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Switch(
                      value: isChecked,
                      activeColor: ColorPalette.primary500,
                      onChanged: (bool value) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            _menuElement("이용약관", 0),
            _menuElement("개인정보 처리방침", 0),
            _menuElement("로그아웃", 0),
            _menuElement("회원탈퇴", 0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: ColorPalette.grey500,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // TODO: instagram 딥링크 추가
              },
              child: Container(
                width: double.infinity,
                height: 44,
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SvgPicture.asset(
                        'assets/icons/Instagram_simple_icon.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '@weeken_go',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _userInfo(String nickName) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: const CircleAvatar(
              radius: 48, // Image radius
              backgroundColor: ColorPalette.background,
              child: Icon(
                Icons.person,
                size: 50,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Text(
            nickName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget _menuElement(String menuName, int targetPageIndex) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 44,
        margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Text(
                menuName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Icon(Icons.arrow_forward_ios_rounded, size: 14),
            ),
          ],
        ),
      ),
    );
  }
}
