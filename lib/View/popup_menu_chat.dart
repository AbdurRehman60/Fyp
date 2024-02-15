import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

class PopupmenuChat extends StatefulWidget {
  const PopupmenuChat({super.key});

  @override
  State<PopupmenuChat> createState() => _PopupmenuChatState();
}

class _PopupmenuChatState extends State<PopupmenuChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 142, 199, 207),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff034B56),
          ),
        ),
        title: Text(
          "Chat Bot",
          style: GoogleFonts.poppins(
            // fontStyle: FontStyle.italic,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xff034B56),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // ignore: sort_child_properties_last
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 10),
                      child: Row(
                        children: [
                          Image.asset("assets/images/jin.png"),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Hello !!",
                            style: GoogleFonts.montserrat(
                              // fontStyle: FontStyle.italic,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 10, top: 25),
                      child: Text(
                        "Welcome to our  Pet Medical suggestion and find-out our pet breed with image through.",
                        style: GoogleFonts.montserrat(
                          // fontStyle: FontStyle.italic,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),

                width: 350,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff157A8C)),
              ),
            ),
            SizedBox(
              height: 500.h,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
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
                    "Type a Message",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff034B56),
                    ),
                  ),
                  suffixIcon: Icon(Icons.send, color: Color(0xff034B56)),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.attachment_outlined,
                          color: Color(0xff034B56),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
