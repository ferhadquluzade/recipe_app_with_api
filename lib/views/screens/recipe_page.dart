import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  // late final String vdioUrl;
  late final String name;
  late final String cont;
  late final String images;
  // late final String snapshotUrl;
  RecipePage(this.cont, this.name,this.images);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        //recipe name
        title: Text(name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image
              Image.network(images,width: size.width,height: size.height*0.3,),
              //text
              Container(
                width: size.width ,
                height: size.height * 0.4,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                        child: Text(
                            cont.isNotEmpty ? cont : "There is not any content",
                            style: TextStyle(color: Colors.black,fontSize: 20))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
