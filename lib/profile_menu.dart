import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loanapp_mobile/widgets/custom_expansion_tile.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          SizedBox(height: 20.0),
          Column(
            children: [
              CustomExpansionTile(
                iconColor: const Color(0xFF214389),
                imgSrc: 'assets/svg/profile.svg',
                tlRadius: 8.0,
                trRadius: 8.0,
                trailing: Icon(
                  Icons.navigate_next_outlined,
                ),
                title: Text(
                  "Thông tin cá nhân",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
              ),
              CustomExpansionTile(
                iconColor: const Color(0xFF214389),
                imgSrc: 'assets/svg/otp.svg',
                trailing: Icon(
                  Icons.navigate_next_outlined,
                ),
                title: Text(
                  "Smart OTP",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
              ),
              CustomExpansionTile(
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
                    marginLeft: 31,
                    tileColor: const Color(0xFFFAFAFA),
                    imgSrc: 'assets/svg/help.svg',
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                    ),
                    title: const Text(
                      "Câu hỏi thường gặp",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomExpansionTile(
                    marginLeft: 31,
                    tileColor: const Color(0xFFFAFAFA),
                    imgSrc: 'assets/svg/hotline.svg',
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                    ),
                    title: const Text(
                      "Thông tin liên hệ",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomExpansionTile(
                    marginLeft: 31,
                    tileColor: const Color(0xFFFAFAFA),
                    imgSrc: 'assets/svg/instruction.svg',
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                    ),
                    title: const Text(
                      "Hướng dẫn sử dụng",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              CustomExpansionTile(
                iconColor: const Color(0xFF214389),
                imgSrc: 'assets/svg/document.svg',
                trailing: Icon(
                  Icons.navigate_next_outlined,
                ),
                title: Text(
                  "Điều khoản, Điều kiện",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
              ),
              CustomExpansionTile(
                iconColor: const Color(0xFF214389),
                borderBottomColor: Colors.transparent,
                blRadius: 8.0,
                brRadius: 8.0,
                imgSrc: 'assets/svg/setting.svg',
                trailing: Icon(
                  Icons.navigate_next_outlined,
                ),
                title: Text(
                  "Cài đặt",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
                children: [
                  CustomExpansionTile(
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
