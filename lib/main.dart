import 'package:flutter/material.dart';
import 'package:resume_building_app/screens/build_option.dart';
import 'package:resume_building_app/screens/carrier_objective.dart';
import 'package:resume_building_app/screens/contact_info.dart';
import 'package:resume_building_app/screens/education.dart';
import 'package:resume_building_app/screens/homepage.dart';
import 'package:resume_building_app/screens/pdf_screen.dart';
import 'package:resume_building_app/screens/personal_details.dart';
import 'package:resume_building_app/screens/projects.dart';
import 'package:resume_building_app/screens/references.dart';
import 'package:resume_building_app/screens/splesh_screen.dart';
import 'package:resume_building_app/screens/tecnical_skills.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const splesh_screen(),
        'home': (context) => const homepage(),
        'Build': (context) => const Buildoption(),
        'contact_info': (context) => const ContectInfo(),
        'personal_details': (context) => const PersonalDetails(),
        'achievements': (context) => const pdf_screen(),
        'technical_skills': (context) => const tecnical_screen(),
        'references': (context) => const reference_screen(),
        'carrier_objective': (context) => const carrier_objective(),
        'education': (context) => const education(),
        'projects': (context) => const projects(),
      },
    ),
  );
}
