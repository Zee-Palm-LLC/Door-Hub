// import 'package:door_hub/app/data/constants/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ServiceDescriptionText extends StatefulWidget {
//   const ServiceDescriptionText({super.key});

//   @override
//   State<ServiceDescriptionText> createState() => _ServiceDescriptionTextState();
// }

// class _ServiceDescriptionTextState extends State<ServiceDescriptionText> {
//   bool isBold = false;
//   bool isItalic = false;
//   bool isUnderline = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.r),
//         border: Border.all(color: AppColors.kHint),
//       ),
//       child: Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 color: AppColors.kWhite,
//                 borderRadius:
//                     BorderRadius.vertical(top: Radius.circular(10.r))),
//             child: Row(
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     setState(() {
//                       isBold = !isBold;
//                     });
//                   },
//                   icon: Icon(
//                       isBold ? Icons.format_bold : Icons.format_bold_outlined),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     setState(() {
//                       isItalic = !isItalic;
//                     });
//                   },
//                   icon: Icon(isItalic
//                       ? Icons.format_italic
//                       : Icons.format_italic_outlined),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     setState(() {
//                       isUnderline = !isUnderline;
//                     });
//                   },
//                   icon: Icon(isUnderline
//                       ? Icons.format_underline
//                       : Icons.format_underline_outlined),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     Clipboard.setData(ClipboardData(text: 'Hello'));
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Text copied')),
//                     );
//                   },
//                   icon: Icon(Icons.copy),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(
//             color: AppColors.kHint,
//           ),
//           Container(
//             padding: EdgeInsets.all(10.h),
//             decoration: BoxDecoration(
//                 color: AppColors.kNeutral01,
//                 borderRadius:
//                     BorderRadius.vertical(bottom: Radius.circular(20.r))),
//             child: Text(
//               'aklnclnlkasznknknk.snck.nskvnksdvnkjnsdvkjnsvkjnkjsvdnkjsndknsvdkjnvsdkjnsvdknkjvsdnk.j',
//               style: TextStyle(
//                 fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//                 fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
//                 decoration: isUnderline
//                     ? TextDecoration.underline
//                     : TextDecoration.none,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
