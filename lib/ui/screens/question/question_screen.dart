// import 'package:flutter/material.dart';
// import 'package:pmob_22/data/BD.dart';
// import 'package:pmob_22/ui/screens/question/checkBox_state.dart';
// import 'package:pmob_22/utils/constants.dart';

// import '../../../domain/questions.dart';
// import '../../widgets/buttons/rounded_app_button.dart';

// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen({Key? key}) : super(key: key);


//   @override
//   State<QuestionScreen> createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<QuestionScreen> {
//   List<Questoes> list = QuestoesBD.lista;
  
//   bool value = false;
//   final respostas = [
//     CheckBoxState(
//       title: "1",
//     ),
//     CheckBoxState(
//       title: "2",
//     ),
//     CheckBoxState(
//       title: "3",
//     ),
//     CheckBoxState(
//       title: "4",
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7F7F2),
//       appBar: AppBar(
//         backgroundColor: mainColor,
//         toolbarHeight: 80,
//         title: const Center(
//           child: Text("Questões",
//               style: TextStyle(fontSize: 30, color: Colors.white)),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Text("${list[0].numero}"),
//           Row(
//             children: [
//               Container(height: 50, width: 50, color: Colors.red),
//               Container(
//                 color: Colors.blue,
//                 height: 50,
//                 width: 50,
//               ),
//             ],
//           ),
//           const Divider(
//             color: mainColor,
//             thickness: 2,
//             indent: 14,
//             endIndent: 14,
//           ),
//           Text("Enem, 2013"),
//           Text("O Valor de (0,2)3 + (0,16)2 é: "),
//           ...respostas.map(buildSingleCheckbox).toList(),
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 25.0, right: 20),
//                 child: RoundedAppButton(
//                       buttonColor: mainColor,
//                       buttonName: "Responder",
//                       height: 35,
//                       width: 150,
//                       textColor: Colors.white,
//                       textSize: 15,
//                       buttonRouding: 50,
//                       onTap: () {},
//                     ),
//               ),
//               RoundedAppButton(
//                 buttonColor: ButtonColor,
//                 buttonName: "Pular Questão",
//                 height: 35,
//                 width: 150,
//                 textColor: Colors.white,
//                 textSize: 15,
//                 buttonRouding: 50,
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildSingleCheckbox(CheckBoxState checkbox) =>
//      CheckboxListTile(
//             controlAffinity: ListTileControlAffinity.leading,
//             value: checkbox.value,
//             title: Text(checkbox.title),
//             onChanged: (value){
//               setState(() {
                
//               checkbox.value = value!;
//               });
//            });
  

// }
