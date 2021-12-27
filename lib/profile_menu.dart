import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loanapp_mobile/widgets/custom_expansion_tile.dart';

class ProfileMenu extends StatefulWidget {
  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  var isLastElement = true;
  final expansionItems = [
    ExpansionTile(
        path: '1',
        iconColor: const Color(0xFF214389),
        imgSrc: 'assets/svg/profile.svg',
        tlRadius: 8.0,
        trRadius: 8.0,
        trailing: Icon(Icons.navigate_next_outlined),
        title: Text("Thông tin cá nhân",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400)),
        children: []),
    ExpansionTile(
        path: '2',
        iconColor: const Color(0xFF214389),
        imgSrc: 'assets/svg/otp.svg',
        trailing: Icon(
          Icons.navigate_next_outlined,
        ),
        title: Text("Smart OTP",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400)),
        children: []),
    ExpansionTile(
        path: '3',
        iconColor: const Color(0xFF214389),
        imgSrc: 'assets/svg/faq.svg',
        trailing: const Icon(
          Icons.navigate_next_outlined,
        ),
        title: const Text(
          "Trợ giúp",
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
        ),
        children: [
          CustomExpansionTile(
            onTap: () {},
            marginLeft: 31,
            tileColor: const Color(0xFFFAFAFA),
            imgSrc: 'assets/svg/help.svg',
            trailing: const Icon(
              Icons.navigate_next_outlined,
            ),
            title: const Text(
              "Câu hỏi thường gặp",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
            ),
          ),
          CustomExpansionTile(
            onTap: () {},
            marginLeft: 31,
            tileColor: const Color(0xFFFAFAFA),
            imgSrc: 'assets/svg/hotline.svg',
            trailing: const Icon(
              Icons.navigate_next_outlined,
            ),
            title: const Text(
              "Thông tin liên hệ",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
            ),
          ),
          CustomExpansionTile(
            onTap: () {},
            marginLeft: 31,
            tileColor: const Color(0xFFFAFAFA),
            imgSrc: 'assets/svg/instruction.svg',
            trailing: const Icon(
              Icons.navigate_next_outlined,
            ),
            title: const Text(
              "Hướng dẫn sử dụng",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
            ),
          ),
        ]),
    ExpansionTile(
      path: '4',
      iconColor: const Color(0xFF214389),
      imgSrc: 'assets/svg/document.svg',
      trailing: Icon(
        Icons.navigate_next_outlined,
      ),
      title: Text(
        "Điều khoản, Điều kiện",
        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
      ),
      children: [],
    )
  ];

  List<Widget> _buildExpansionTiles() {
    return expansionItems
        .map((tile) => CustomExpansionTile(
              onTap: () {
                print(tile.path);
              },
              title: tile.title,
              imgSrc: tile.imgSrc,
              iconColor: tile.iconColor,
              trailing: tile.trailing,
              tlRadius: tile.tlRadius,
              trRadius: tile.trRadius,
              children: tile.children,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          SizedBox(height: 20.0),
          Column(
            children: [
              Wrap(
                children: _buildExpansionTiles(),
              ),
              CustomExpansionTile(
                onTap: () {
                  print('123');
                },
                iconColor: const Color(0xFF214389),
                borderBottomColor: Colors.transparent,
                blRadius: isLastElement ? 8.0 : 0.0,
                brRadius: isLastElement ? 8.0 : 0.0,
                imgSrc: 'assets/svg/setting.svg',
                onExpansionChanged: (bool expanded) {
                  setState(() => isLastElement = !expanded);
                },
                trailing: Icon(
                  Icons.navigate_next_outlined,
                ),
                title: Text(
                  "Cài đặt",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
                children: [
                  CustomExpansionTile(
                    onTap: () {
                      print('zz');
                    },
                    marginLeft: 31,
                    tileColor: const Color(0xFFFAFAFA),
                    imgSrc: 'assets/svg/face_id.svg',
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                    ),
                    title: const Text(
                      "Cài đặt phương thức đăng nhập",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomExpansionTile(
                    onTap: () {},
                    marginLeft: 31,
                    tileColor: const Color(0xFFFAFAFA),
                    imgSrc: 'assets/svg/lock.svg',
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                    ),
                    title: const Text(
                      "Đổi mật khẩu",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomExpansionTile(
                    onTap: () {},
                    blRadius: 8.0,
                    brRadius: 8.0,
                    borderBottomColor: Colors.transparent,
                    marginLeft: 31,
                    tileColor: const Color(0xFFFAFAFA),
                    imgSrc: 'assets/svg/alert.svg',
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                    ),
                    title: const Text(
                      "Cài đặt thông báo",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12.0),
          CustomExpansionTile(
            onTap: () {},
            iconColor: const Color(0xFF214389),
            imgSrc: 'assets/svg/sign_out.svg',
            borderBottomColor: Colors.transparent,
            tlRadius: 8.0,
            trRadius: 8.0,
            blRadius: 8.0,
            brRadius: 8.0,
            title: Text(
              "Đăng xuất",
              style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFFFF3B30),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpansionTile {
  Color iconColor;
  String imgSrc;
  String path;
  double tlRadius;
  double trRadius;
  Icon trailing;
  Text title;
  List<Widget> children;

  ExpansionTile(
      {required this.iconColor,
      required this.imgSrc,
      required this.path,
      this.tlRadius = 0.0,
      this.trRadius = 0.0,
      required this.trailing,
      required this.title,
      required this.children});
}
