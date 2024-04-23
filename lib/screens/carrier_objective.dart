import 'package:flutter/material.dart';
import 'package:resume_building_app/utils/global.dart';

class carrier_objective extends StatefulWidget {
  const carrier_objective({super.key});

  @override
  State<carrier_objective> createState() => _carrier_objectiveState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _carrier_objectiveState extends State<carrier_objective> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Globals.bgColor,
        toolbarHeight: 140,
        title: Text(
          "Carrier Objective",
          style: TextStyle(fontSize: 22, color: Globals.textColor),
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
                    height: h * .70,
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
                            "Carrier Objective",
                            style: TextStyle(
                              fontSize: 23,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(
                              height: 7,
                            ),
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.dobc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "discription";
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
                              // hintText: "description",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Carrior designation(Experienced candidate",
                            style: TextStyle(
                              fontSize: 20,
                              color: Globals.bgColor,
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(),
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.dobc.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "discription";
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
                              // hintText: "description",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
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
