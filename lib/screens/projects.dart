import 'package:flutter/material.dart';

import '../utils/global.dart';

class projects extends StatefulWidget {
  const projects({super.key});

  @override
  State<projects> createState() => _projectsState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _projectsState extends State<projects> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffededed),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              formKey.currentState!.reset();
              Globals.dobc.clear();
              Globals.nationalityc.clear();
            },
            icon: Icon(
              Icons.refresh,
              color: Globals.textColor,
            ),
          ),
        ],
        toolbarHeight: 120,
        backgroundColor: Globals.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Globals.textColor,
          ),
        ),
        title: Text(
          "Personal Details",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(top: 30),
                    height: h * .80,
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
                            "DOB",
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
                            keyboardType: TextInputType.datetime,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                              hintText: "DD/MM/YYYY",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            "Languages Known",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Globals.bgColor,
                                  value: Globals.english,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.english = val!;
                                    });
                                  }),
                              const Text(
                                "English",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Globals.bgColor,
                                  value: Globals.hindi,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.hindi = val!;
                                    });
                                  }),
                              const Text(
                                "Hindi",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Globals.bgColor,
                                  value: Globals.gujarati,
                                  onChanged: (val) {
                                    setState(() {
                                      Globals.gujarati = val!;
                                    });
                                  }),
                              const Text(
                                "Gujarati",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Nationality",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.nationalityc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Plese Enter Passing Year";
                              }
                            },
                            controller: Globals.nationalityc,
                            onChanged: (val) {
                              setState(() {
                                Globals.nationality = val;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Indian",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nationality",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.nationalityc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Plese Enter Passing Year";
                              }
                            },
                            controller: Globals.nationalityc,
                            onChanged: (val) {
                              setState(() {
                                Globals.nationality = val;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Indian",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nationality",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.nationalityc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Plese Enter Passing Year";
                              }
                            },
                            controller: Globals.nationalityc,
                            onChanged: (val) {
                              setState(() {
                                Globals.nationality = val;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Indian",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Saved Successfully..."),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Plese Enter Full Detail..."),
                                  ),
                                );
                              }
                            },
                            child: Center(
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 110,
                                color: Globals.bgColor,
                                child: Text(
                                  "SAVE",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Globals.textColor,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
