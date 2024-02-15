import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fyp/View/deatils_screen_pet.dart';

import 'package:fyp/core/models/pet_model.dart';

import 'package:google_fonts/google_fonts.dart';

class CustomPetCard extends StatefulWidget {
  final PetModel pet;

  const CustomPetCard({
    super.key,
    required this.pet,
  });

  @override
  State<CustomPetCard> createState() => _CustomPetCardState();
}

class _CustomPetCardState extends State<CustomPetCard> {
  bool liked = false;
  CurrencyFormat pkrSetting = const CurrencyFormat(
    code: 'pkr',
    symbol: 'Rs',
    symbolSide: SymbolSide.left,
    thousandSeparator: ',',
    decimalSeparator: '.',
    symbolSeparator: ' ',
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DeatilScreen(pet: widget.pet)));
      },
      child: Card(
        color: const Color(0xffF0F5F6),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          //set border radius more than 50% of height and width to make circle
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              child: Container(
                height: 150.h,
                width: 150.w,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(widget.pet.img!),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () {
                            liked = !liked;
                            setState(() {});
                          },
                          icon: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: liked
                                ? const Icon(
                                    Icons.favorite,
                                    color: Color(
                                      0xff2f6a74,
                                    ),
                                  )
                                : const Icon(
                                    Icons.favorite_border_outlined,
                                    color: Color(0xff2f6a74),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 7,
              ),
              child: Text(widget.pet.name!,
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 7,
              ),
              child: Text(
                widget.pet.breed!,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff2f6a74),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 7,
              ),
              child: Text(
                widget.pet.location!,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff2f6a74),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
              child: Text(
                CurrencyFormatter.format(
                  widget.pet.price,
                  pkrSetting,
                ),
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
