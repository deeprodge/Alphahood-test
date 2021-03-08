import 'package:flutter/material.dart';
import 'package:alphahood/data/data.dart';
import 'confirm_id.dart';
import 'package:alphahood/components/elevatedCard.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flag/flag.dart';


class LoginPage extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  List<DropdownMenuItem<String>> _dropdownMenuItems;
  String _selectedCountryCode;
  TextEditingController controller = TextEditingController();
  String selectedCountryCode;
  String number;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(countryCodeList);
    _selectedCountryCode = _dropdownMenuItems[0].value;
    selectedCountryCode = countryCodeList[int.parse(_selectedCountryCode)].code;
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<String>> items = [];
    int length = listItems.length;
    for (int i=0; i < length;  i++) {
      items.add(
        DropdownMenuItem(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 20,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                    child: Flag(listItems[i].name,height: 16,
                      width: 30,)),
                SizedBox(width: 10,),
                Text(listItems[i].code)
              ],
            ),
          ),
          value: i.toString(),
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    currentDisplaySize.height = MediaQuery.of(context).size.height;
    currentDisplaySize.width = MediaQuery.of(context).size.width;
    double height = currentDisplaySize.height;
    double width = currentDisplaySize.width;
    print("${currentDisplaySize.height} \n ${currentDisplaySize.width}");
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(height * 0.0394, height * 0.171,
            height * 0.03694, height * 0.03694),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "deep",
              child: elevatedCard(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: height * 0.0554,
                  width: height * 0.0554,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.029,
                ),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: height * 0.0517,
                    fontWeight: FontWeight.w700,
                    //fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: height * 0.011,
                ),
                Text(
                  'enter your registered no.',
                  style: TextStyle(
                    fontSize: height * 0.02955,
                    fontWeight: FontWeight.w400,
                    //fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    elevatedCard(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(height * 0.0223, 0, 10, 0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  dropdownColor: Theme.of(context).primaryColor,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,
                                  ),
                                  style: TextStyle(
                                    fontSize: height * 0.0221,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    //fontWeight: FontWeight.bold),
                                  ),
                                  items: _dropdownMenuItems,
                                  value: _selectedCountryCode,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedCountryCode = value;
                                      selectedCountryCode = countryCodeList[int.parse(_selectedCountryCode)].code;
                                    });
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: height * 0.0246),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                //                   <--- left side
                                color: Colors.grey[300],
                                width: 2,
                              ),
                            ),
                          ),
                          child: TextField(
                            style: TextStyle(fontSize: height * 0.0266, fontWeight: FontWeight.w500),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.continueAction,
                            controller: controller,
                            onChanged: (value) {
                              setState(() {
                                //controller.text = value;
                                number = value;
                              });
                            },
                            decoration: InputDecoration(
                                hintText: 'Enter Mobile Number',
                              hintStyle: TextStyle(fontSize: height * 0.0186, fontWeight: FontWeight.w500),

                          ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.0862,
            ),
            Hero(
              tag: 'bottomButtons',
              child: Row(
                children: [
                  elevatedCard(
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.02586),
                      child: Icon(Icons.arrow_back_rounded,
                          color: Colors.white, size: height*0.0233),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        currentUser.phoneNumber = "${selectedCountryCode??''} ${number??''}";
                        Navigator.pushNamed(context, ConfirmID.id);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: height * 0.0147),
                        child: elevatedCard(
                          //padding: const EdgeInsets.all(18.0),
                          child: Padding(
                            padding: EdgeInsets.all(height*0.02586),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * 0.0197,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.arrow_forward_rounded,
                                    color: Colors.white, size: height*0.0223),
                              ],
                            ),
                          ),
                        ),
                      ),
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
