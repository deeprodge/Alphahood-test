import 'package:flutter/material.dart';
import 'package:alphahood/components/StudentAvatar.dart';

List<String> countryCode = ['+91', '+92', '+71', '+23'];

class DisplaySize{
  double height;
  double width;
  DisplaySize({this.height, this.width});
}

class UpdateCardData{
  IconData icon;
  String value;
  String typeText;
  Color topColor;
  Color bottomColor;

  UpdateCardData({this.icon,this.value,this.typeText,this.topColor,this.bottomColor});
}

class User{
  AssetImage studentImage;
  String name;
  String studentClass;
  String phoneNumber;
  User({this.name, this.studentImage, this.studentClass, this.phoneNumber});
}

class GeneralSettingsListData{
  IconData iconData;
  String title;
  String nextPageRouteName = '';
  GeneralSettingsListData({this.iconData, this.title, this.nextPageRouteName});
}

class NoticeBoardCardData{
  String title = '';
  String typeText = '';
  String description= '';
  String date = '';
  NoticeBoardCardData({this.title, this.typeText, this.description, this.date});
}

class CountryCodes{
  String code;
  String name;
  CountryCodes({this.name,this.code});
}

List<CountryCodes> countryCodeList = [
  CountryCodes(name: 'IN', code: '+91'),
 CountryCodes(name: 'US', code: '+1'),
 CountryCodes(name: 'CA', code: '+1'),
  CountryCodes(name: 'NP', code: '+977'),
  CountryCodes(name: 'LK', code: '+94'),
];

List<NoticeBoardCardData> noticeBoardList =[
  NoticeBoardCardData(title: 'Holi Holiday', typeText: 'Holiday', description: "Activate every muscle group to get the results you've always wanted", date: "15 March 2021"),
  NoticeBoardCardData(title: 'Holi Holiday', typeText: 'Holiday', description: "Activate every muscle group to get the results you've always wanted", date: "15 March 2021"),
  NoticeBoardCardData(title: 'Holi Holiday', typeText: 'Holiday', description: "Activate every muscle group to get the results you've always wanted", date: "15 March 2021"),
  NoticeBoardCardData(title: 'Holi Holiday', typeText: 'Holiday', description: "Activate every muscle group to get the results you've always wanted", date: "15 March 2021"),
  NoticeBoardCardData(title: 'Holi Holiday', typeText: 'Holiday', description: "Activate every muscle group to get the results you've always wanted", date: "15 March 2021"),
  NoticeBoardCardData(title: 'Holi Holiday', typeText: 'Holiday', description: "Activate every muscle group to get the results you've always wanted", date: "15 March 2021"),
];

DisplaySize currentDisplaySize = DisplaySize();

List<GeneralSettingsListData> generalSettingsList = [
  GeneralSettingsListData(iconData: Icons.person_outline_rounded,title: 'About School',),
  GeneralSettingsListData(iconData: Icons.info_outline_rounded,title: 'About #school_app_project'),
  GeneralSettingsListData(iconData: Icons.info_outline_rounded,title: 'Terms & Conditions'),
  GeneralSettingsListData(iconData: Icons.info_outline_rounded,title: 'Privacy Policy'),
  GeneralSettingsListData(iconData: Icons.contact_support_outlined,title: 'Support'),
  GeneralSettingsListData(iconData: Icons.logout,title: 'Logout', nextPageRouteName: 'login_screen'),
];

User currentUser = User(studentImage: AssetImage('images/image.png'),name: 'Pratibha Yadav', studentClass: 'Class VII A');

List<UpdateCardData> updateCardDataList = [
  UpdateCardData(icon: Icons.date_range_rounded,
value: '90%',
typeText: 'Attendance',
topColor: Color(0xFFF45331),
bottomColor: Color(0xFFFD575D),),
UpdateCardData(icon: Icons.insert_drive_file_outlined,
  value: 'B-Grade',
  typeText: 'Progress',
  topColor: Color(0xFF626FC0),
  bottomColor: Color(0xFF9727E6),),
UpdateCardData(icon: Icons.money,
  value: 'No Dues',
  typeText: 'Fees',
  topColor: Color(0xFFFFDB07),
  bottomColor: Color(0xFFFFB431),)];
