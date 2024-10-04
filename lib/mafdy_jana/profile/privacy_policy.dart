
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:flutter/material.dart';
class Privacy extends StatefulWidget {
  // ... other class members
  @override
  privacy createState() => privacy();
}

class privacy extends State<Privacy> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: CustomAppBar(title: 'Privacy and Policy',onpressed: (){
          Navigator.pop(context);
        },),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Cancelation Policy",
                  style:
                  TextStyle(
                    color:
                    Colors.blue,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including\n versions of Lorem Ipsum."),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Terms & Conditions",
                  style: TextStyle(
                    color: Color.fromARGB(255, 8, 130, 229),
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose  \n (injected humour and the like). typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions  of Lorem There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, \n making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition,\n  injected humour, or non-characteristic words etc. Ipsum."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
