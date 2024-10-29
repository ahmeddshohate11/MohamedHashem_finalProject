// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:graduationproject/data/model/mylost_model/mylost.dart';
import 'package:graduationproject/presantion/screens/update_records/update_losts/edit_pic.dart';
import 'package:graduationproject/presantion/screens/update_records/update_losts/form_update_lost.dart';

class UpdateLostsScreen extends StatelessWidget {
  const UpdateLostsScreen({
    Key? key,
    required this.mylost,
    required this.id,
  }) : super(key: key);

  final Mylost mylost;
  final String id;

  @override
  Widget build(BuildContext context) {
    final entry = mylost.result!.firstWhere((element) => element.id == id);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xFF151528),
                    onPressed: () {},
                    child: Text(
                      "Update records",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 100, bottom: 0, left: 0, right: 0),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/Rectangle 0.png",
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/Rectangle 53.png",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width / 2,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width / 2.4,
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: EditPic(
                              mylost: mylost,
                              imagesList: entry.img!,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.5,
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: FormUpdateloster(
                                mylost: mylost,
                                id: id,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
