import 'package:flutter/material.dart';
import 'package:resume_building_app/utils/global.dart';

class tecnical_screen extends StatefulWidget {
  const tecnical_screen({super.key});

  @override
  State<tecnical_screen> createState() => _tecnical_screenState();
}

List AllTextFields = [];
List<TextEditingController> AllController = [];

class _tecnical_screenState extends State<tecnical_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AllController.add(TextEditingController());
    AllController.add(TextEditingController());

    AllTextFields.add(Row());
    AllTextFields.add(Row());
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Globals.bgColor,
        toolbarHeight: 140,
        title: Text(
          "Technical Skills",
          style: TextStyle(
            fontSize: 22,
            color: Globals.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Globals.textColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.withOpacity(0.4),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                height: h * 0.40,
                width: w * 0.9,
                color: Globals.textColor,
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: h * 0.45,
                        width: w * 0.9,
                        color: Globals.textColor,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                "Enter Your Skills",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ...AllTextFields.map(
                                (e) => getTextFiled(
                                  i: AllTextFields.indexOf(
                                    (e),
                                  ),
                                ),
                              ).toList(),
                              SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      AllController.add(
                                          TextEditingController());
                                      AllTextFields.add(getTextFiled(
                                          i: AllTextFields.length));
                                    },
                                  );
                                },
                                child: Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.transparent,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 50,
                                    color: Colors.grey,
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row getTextFiled({required int i}) {
    return Row(
      children: [
        Expanded(
          flex: 12,
          child: TextField(
            controller: AllController[i],
            decoration: InputDecoration(
              hintText: "  C Programing, Web Technical ",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: IconButton(
            onPressed: () {
              setState(
                () {
                  AllController.removeAt(i);
                  AllTextFields.removeAt(i);
                },
              );
            },
            icon: Icon(
              Icons.delete,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
