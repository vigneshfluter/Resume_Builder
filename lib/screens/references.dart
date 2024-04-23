import 'package:flutter/material.dart';
import 'package:resume_building_app/utils/global.dart';

class reference_screen extends StatefulWidget {
  const reference_screen({super.key});

  @override
  State<reference_screen> createState() => _reference_screenState();
}

class _reference_screenState extends State<reference_screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Globals.bgColor,
        title: Text(
          "References",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.withOpacity(0.4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  height: h * 0.60,
                  width: w * 0.9,
                  color: Globals.textColor,
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(top: 30),
                          height: h * .65,
                          width: w * .9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Globals.textColor,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Reference Name",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Globals.bgColor,
                                  ),
                                ),
                                TextFormField(
                                  onFieldSubmitted: (val) {
                                    setState(() {
                                      Globals.dobc.text = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "DD/MM/YYYY";
                                    }
                                  },
                                  controller: Globals.dobc,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.dob = val;
                                    });
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                    hintText: "suresh shah",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Designation",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Globals.bgColor,
                                  ),
                                ),
                                TextFormField(
                                  onFieldSubmitted: (val) {
                                    setState(() {
                                      Globals.dobc.text = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "DD/MM/YYYY";
                                    }
                                  },
                                  controller: Globals.dobc,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.dob = val;
                                    });
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                    hintText: "Marketing /manager, iD-342323",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Organization/institute",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Globals.bgColor,
                                  ),
                                ),
                                TextFormField(
                                  onFieldSubmitted: (val) {
                                    setState(() {
                                      Globals.dobc.text = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "DD/MM/YYYY";
                                    }
                                  },
                                  controller: Globals.dobc,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.dob = val;
                                    });
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                    hintText: "green Energy pvt.Ltd",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal,
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
      ),
    );
  }
}
