import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
final Function selectHandler;
final String answerText;
Answer(this.selectHandler, this.answerText);
@override
Widget build(BuildContext context) {
return Container(
height: 50.0,
margin: EdgeInsets.all(10),
child: RaisedButton(
onPressed: () {
selectHandler();
},
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(80.0)),
padding: EdgeInsets.all(0.0),
child: Ink(
decoration: BoxDecoration(
gradient: LinearGradient(
colors: [Color(0xff00466d), Color(0xff61def3)],
begin: Alignment.centerLeft,
end: Alignment.centerRight,
),
borderRadius: BorderRadius.circular(30.0)),
child: Container(
constraints:
BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
alignment: Alignment.center,
child: Text(answerText),
),
),
),
);
}
}
