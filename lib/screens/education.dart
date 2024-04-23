import 'package:flutter/material.dart';
import 'package:resume_building_app/utils/global.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Globals.bgColor,
        toolbarHeight: 120,
        title: Text(
          "Education",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.withOpacity(0.4),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(10),
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
                                  "Cource/name",
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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                    hintText: "BCA",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Text(
                                  "school/collage/institute",
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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                    hintText: "Swarnim universety",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Text(
                                  "school/collage/institute",
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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                    hintText: "Swarnim universety",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Text(
                                  "year of pass",
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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    hintText: "year of passing",
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
