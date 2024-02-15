import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyp/core/dummy_data/enums.dart';
import 'package:fyp/wigets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class AddScreeeforsell extends StatefulWidget {
  const AddScreeeforsell({super.key});

  @override
  State<AddScreeeforsell> createState() => _AddScreeeforsellState();
}

class _AddScreeeforsellState extends State<AddScreeeforsell> {
  String? selectedValue;
  String? selectedbreed;
  int tag = 1;
  String? selectedSex;
  Gender? selectedGender;
  Vaccinated? vacci;

  List<String> get values => [
        'Animal is Cat',
        'Animal is Dog',
        'Animal is Rabbits',
      ];
  List<String> get val => [
        'Breed is American',
        'Breed is Birman',
        'Breed is Bombay',
        'Breed is Russian',
        'Breed is Persian',
        'Breed is Maine Coon',
        'Breed is Others',
      ];

  List<DropdownMenuItem<String>> get dropdownItems {
    return values.map((value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> get breeditems {
    return val.map((val) {
      return DropdownMenuItem<String>(
        value: val,
        child: Text(val),
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

                              // Row(
                              //   children: [
                              //     Padding(
                              //       padding: const EdgeInsets.only(left: 19),
                              //       child: Text(
                              //         "Select",
                              //         style: GoogleFonts.poppins(
                              //           // fontStyle: FontStyle.italic,
                              //           fontSize: 18,
                              //           fontWeight: FontWeight.w600,
                              //           color: const Color(0xff034B56),
                              //         ),
                              //       ),
                              //     ),
                              //     Icon(
                              //       Icons.arrow_forward_ios,
                              //       color: Color(0xff034B56),
                              //       size: 20,
                              //     )
                              //   ],
                              // ),
                            },
                          ),
                        ),
                      )
                    ],
                  )
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
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Price *",
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
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: const TextField(
                decoration: InputDecoration(
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
                    "Please Enter Price",
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
              padding: const EdgeInsets.only(top: 10, right: 60),
              child: Container(
                width: 220,
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
                      fontSize: 20,
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
              child: const TextField(
                decoration: InputDecoration(
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
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (vacci == null || vacci != Vaccinated.yes) {
                          vacci = Vaccinated.yes;
                        } else {
                          vacci = null;
                        }
                      });
                    },
                    child: Container(
                      width: 80.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                        color: vacci == Vaccinated.yes
                            ? const Color(0xff86C6D0)
                            : Colors.transparent,
                        border: Border.all(
                            width: 1, color: const Color(0xff86C6D0)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 5),
                        child: Text(
                          "YES",
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
                    width: 15.w,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (vacci == null || vacci != Vaccinated.no) {
                          vacci = Vaccinated.no;
                        } else {
                          vacci = null;
                        }
                      });
                    },
                    child: Container(
                      width: 75.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: vacci == Vaccinated.no
                            ? const Color(0xff86C6D0)
                            : Colors.transparent,
                        border: Border.all(
                            width: 1, color: const Color(0xff86C6D0)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 7, bottom: 5),
                        child: Text(
                          "NO",
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
                top: 10,
              ),
              child: Divider(
                color: Color(0xff86C6D0),
                thickness: 1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Location *",
                        style: GoogleFonts.poppins(
                          // fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff034B56),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Choose",
                        style: GoogleFonts.poppins(
                          // fontStyle: FontStyle.italic,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff034B56),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 190.w,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff034B56),
                    size: 30,
                    weight: 40,
                  )
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
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Ad title *",
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
              child: const TextField(
                decoration: InputDecoration(
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
                    "Please Enter title",
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
                    "Describs what you are selling *",
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
              child: const TextField(
                decoration: InputDecoration(
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
                      "Please Enter Details", // Use labelText instead of label
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
              padding: const EdgeInsets.only(bottom: 10, top: 10),
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
