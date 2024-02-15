import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyp/core/dummy_data/enums.dart';
import 'package:fyp/wigets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class PetLostAddScreen extends StatefulWidget {
  const PetLostAddScreen({super.key});

  @override
  State<PetLostAddScreen> createState() => _PetLostAddScreenState();
}

class _PetLostAddScreenState extends State<PetLostAddScreen> {
  TextEditingController age = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController info = TextEditingController();
  Gender? selectedGender;
  String? selectedbreed;
  List<DropdownMenuItem<String>> get breeditems {
    return val.map((val) {
      return DropdownMenuItem<String>(
        value: val,
        child: Text(val),
      );
    }).toList();
  }

  List<String> get val => [
        'Breed is American',
        'Breed is Birman',
        'Breed is Bombay',
        'Breed is Russian',
        'Breed is Persian',
        'Breed is Maine Coon',
        'Breed is Others',
      ];
  TextEditingController date = TextEditingController();
  String? selectedValue;
  List<String> get values => [
        'Animal is Cat',
        'Animal is Dog',
        'Animal is Rabbits',
      ];
  List<DropdownMenuItem<String>> get dropdownItems {
    return values.map((value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 142, 199, 207),
        title: Text(
          "Include some details",
          style: GoogleFonts.poppins(
            // fontStyle: FontStyle.italic,
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: const Color(0xff034B56),
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff094953),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: Container(
                // width: 30.w,
                height: 60.h,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 142, 199, 207),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "UPLOAD UP TO 20 PHOTOS",
                        style: GoogleFonts.poppins(
                          // fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff034B56),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xff034B56),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset("assets/svg/Add images button.svg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200, top: 25),
              child: Text(
                "Categories*",
                style: GoogleFonts.poppins(
                  // fontStyle: FontStyle.italic,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff034B56),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/PL.png",
                    width: 85.w,
                    height: 85.h,
                  ),
                  Column(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 15),
                      //   child: Text(
                      //     "Animals",
                      //     style: GoogleFonts.poppins(
                      //       // fontStyle: FontStyle.italic,
                      //       fontSize: 20,
                      //       fontWeight: FontWeight.w500,
                      //       color: const Color(0xff034B56),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: const Color(0xff86C6D0)),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: DropdownButton<String>(
                            borderRadius: BorderRadius.circular(20),
                            value: selectedValue,
                            hint: Text(
                              "Please Select an Animal",
                              style: GoogleFonts.poppins(
                                // fontStyle: FontStyle.italic,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff034B56),
                              ),
                            ),
                            underline: const SizedBox(),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            items: dropdownItems,
                            onChanged: (value) {
                              setState(
                                () {
                                  selectedValue = value;
                                },
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18, right: 18, top: 5),
              child: Divider(
                color: Color(0xff86C6D0),
                thickness: 1,
              ),
            ),

            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: InkWell(
                onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickeddate != null) {
                    date.text = pickeddate.toString();
                  }
                },
                child: TextField(
                  controller: date,
                  enabled: false,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_month_outlined),
                    label: Text(
                      "Please Enter Last seen Day / Date",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff034B56),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18, right: 18, top: 15),
              child: Divider(
                color: Color(0xff86C6D0),
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Breed *",
                    style: GoogleFonts.poppins(
                      // fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff034B56),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: const Color(0xff86C6D0)),
                    borderRadius: BorderRadius.circular(10.0)),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(20),
                  value: selectedbreed,
                  hint: Text(
                    "Please Select a Breed",
                    style: GoogleFonts.poppins(
                      // fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff034B56),
                    ),
                  ),
                  underline: const SizedBox(),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  items: breeditems,
                  onChanged: (val) {
                    setState(
                      () {
                        selectedbreed = val;
                      },
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
                top: 15,
              ),
              child: Divider(
                color: Color(0xff86C6D0),
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        // Gender.female;
                        if (selectedGender == null ||
                            selectedGender != Gender.male) {
                          selectedGender = Gender.male;
                        } else {
                          selectedGender = null;
                        }
                      });
                    },
                    child: Container(
                      width: 99,
                      height: 53,
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.male
                            ? const Color(0xff86C6D0)
                            : Colors.transparent,
                        border: Border.all(
                            width: 1, color: const Color(0xff86C6D0)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, top: 13),
                        child: Text(
                          "Male",
                          style: GoogleFonts.poppins(
                            // fontStyle: FontStyle.italic,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff034B56),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        // Gender.female;
                        if (selectedGender == null ||
                            selectedGender != Gender.female) {
                          selectedGender = Gender.female;
                        } else {
                          selectedGender = null;
                        }
                      });
                    },
                    child: Container(
                      width: 99,
                      height: 53,
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.female
                            ? const Color(0xff86C6D0)
                            : Colors.transparent,
                        border: Border.all(
                            width: 1, color: const Color(0xff86C6D0)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, top: 13),
                        child: Text(
                          "FEMALE",
                          style: GoogleFonts.poppins(
                            // fontStyle: FontStyle.italic,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff034B56),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedGender == null ||
                            selectedGender != Gender.pair) {
                          selectedGender = Gender.pair;
                        } else {
                          selectedGender = null;
                        }
                      });
                    },
                    child: Container(
                      width: 99,
                      height: 53,
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.pair
                            ? const Color(0xff86C6D0)
                            : Colors.transparent,
                        border: Border.all(
                            width: 1, color: const Color(0xff86C6D0)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, top: 13),
                        child: Text(
                          "PAIR",
                          style: GoogleFonts.poppins(
                            // fontStyle: FontStyle.italic,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff034B56),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: Divider(
                color: Color(0xff86C6D0),
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Age*",
                    style: GoogleFonts.poppins(
                      // fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff034B56),
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                controller: age,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                        color: Color(0xff86C6D0)), // Adjust width as needed
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                        color: Color(0xff86C6D0)), // Adjust width as needed
                  ),
                  label: Text(
                    "Please Enter Age",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff034B56),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18, right: 18, top: 5),
              child: Divider(
                color: Color(0xff86C6D0),
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Add pet missing Area",
                    style: GoogleFonts.poppins(
                      // fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff034B56),
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                controller: area,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                        color: Color(0xff86C6D0)), // Adjust width as needed
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                        color: Color(0xff86C6D0)), // Adjust width as needed
                  ),
                  label: Text(
                    "Please Enter pet missing Area",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff034B56),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
                top: 10,
              ),
              child: Divider(
                color: Color(0xff86C6D0),
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Pet Information  *",
                    style: GoogleFonts.poppins(
                      // fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff034B56),
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                controller: info,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                        color: Color(0xff86C6D0)), // Adjust width as needed
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                        color: Color(0xff86C6D0)), // Adjust width as needed
                  ),
                  labelText:
                      "Please Enter Pet Information  *", // Use labelText instead of label
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff034B56),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
                top: 10,
              ),
              child: Divider(
                color: Color(0xff86C6D0),
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              child: CustomButton(
                text: "Next",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
