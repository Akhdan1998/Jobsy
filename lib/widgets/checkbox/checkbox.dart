part of '../../../pages.dart';

// Widget dayItem(String label, RxBool isChecked) {
//   return GestureDetector(
//     onTap: () => isChecked.value = !isChecked.value,
//     child: Obx(() => IntrinsicWidth(
//       child: Row(
//         children: [
//           Container(
//             height: 20,
//             width: 20,
//             decoration: BoxDecoration(
//               color: isChecked.value ? skyBlue : whiteSkin,
//               border: Border.all(
//                 width: 2,
//                 color: isChecked.value ? skyBlue : neutralGrey,
//               ),
//               shape: BoxShape.circle,
//             ),
//             child: Container(
//               height: 20,
//               width: 20,
//               decoration: BoxDecoration(
//                 border: Border.all(width: 2, color: whiteSkin),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//           const SizedBox(width: 10),
//           Text(label, style: Poppins(fontSize: 14)),
//         ],
//       ),
//     )),
//   );
// }