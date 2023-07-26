import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class raporcard extends StatelessWidget {
  raporcard({
    super.key,
    this.backgroundcolor,
    this.colorbox,
    this.imgPath = "",
    this.title = "",
    this.teacher = "",
    this.desc = "",
    this.onTap,
  });
  Color? backgroundcolor;
  Color? colorbox;
  String imgPath;
  String title;
  String teacher;
  String desc;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: InkWell(
          //Mata Pelajaran
          onTap: onTap,
          child: Card(
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: backgroundcolor),
                // color: Colors.black.withOpacity(0.50),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                                shadowColor: Colors.transparent,
                                color: colorbox,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                    height: 43.5,
                                    width: 43.5,
                                    child: SvgPicture.asset(imgPath))),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    teacher,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.5)),
                                  )
                                ],
                              ),
                            ),
                          ]),
                      Divider(
                        color: Colors.black,
                      ),
                      // Call List String #######################
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          desc,
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                      // Text(
                      //   '- Tugas Essay',
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold),
                      // ),
                    ],
                  ),
                )),
          )),
    );
  }
}














// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class raporcard extends StatelessWidget {
//   raporcard({
//     super.key,
//     this.colorbox,
//     this.imgPath = "",
//     this.title = "",
//     this.teacher = "",
//     this.desc = "",
//     this.backgroundcolor,
//     this.onTap,
//   });
//   Color? colorbox;
//   String imgPath;
//   String title;
//   String teacher;
//   String desc;
//   Color? backgroundcolor;
//   VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 8),
//       child: Card(
//         child: InkWell(
//             //Mata Pelajaran
//             onTap: onTap,
//             child: Card(
//               shadowColor: Colors.transparent,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               child: Container(
//                   color: backgroundcolor,
//                   child: Padding(
//                     padding: EdgeInsets.fromLTRB(12, 12, 12, 30),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Card(
//                                   // shadowColor: Colors.transparent,
//                                   color: colorbox,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   child: Container(
//                                       height: 43.5,
//                                       width: 43.5,
//                                       child: SvgPicture.asset(imgPath))),
//                               Container(
//                                 padding: EdgeInsets.only(left: 5),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       title,
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       teacher,
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 14,
//                                           color: Colors.black.withOpacity(0.5)),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ]),

//                         Divider(
//                           color: Colors.black.withOpacity(0),
//                         ),
//                         // Call List String #######################
//                         Container(
//                           padding: EdgeInsets.only(left: 5),
//                           child: Text(
//                             desc,
//                             style: TextStyle(fontWeight: FontWeight.w400),
//                           ),
//                         ),
//                         // Text(
//                         //   '- Tugas Essay',
//                         //   style: TextStyle(
//                         //       fontWeight: FontWeight.bold),
//                         // ),
//                       ],
//                     ),
//                   )),
//             )),
//       ),
//     );
//   }
// }
