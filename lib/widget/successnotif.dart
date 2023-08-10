import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        width: 328,
        height: 218,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 26,
            ),
            SvgPicture.asset(
              "assets/vector/check.svg",
              width: 36,
              height: 36,
            ),
            // Placeholder for the vector or image

            SizedBox(height: 10),

            Text(
              'Pembayaran Sudah di',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Konfirmasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 20),
            Container(
              width: 296,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF646FD4)),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Scaffold(
                          backgroundColor: Colors.blue,
                        );
                      });
                },

                // width: 296,
                child: Center(child: Text('Lihat Invoice')),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
