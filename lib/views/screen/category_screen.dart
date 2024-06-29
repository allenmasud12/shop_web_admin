import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_admin/constants.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName = "/CategoryScreen";

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  uploadCategory(){
    if(_formkey.currentState!.validate()){
      print("good guy");
    }else{
      print("bad request");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          border: Border.all(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Center(
                          child: Text("Category"),
                        ),
                      ),
                      20.height,
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {

                        },
                        child: Text("Upload image",style: TextStyle(
                            color: Colors.white
                        ),),
                      )
                    ],
                  ),
                ),
                20.width,
                Flexible(
                  child: SizedBox(
                    width: 150,
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'please Category Name must not be empty';
                        }else{
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: 'Category Name',
                        labelText: 'Category',
                      ),
                      onSaved: (String? value) {

                      },

                    ),
                  ),
                ),
                20.width,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: Text("Cancel", style: TextStyle(
                      color: Colors.black
                  ),),
                ),
                10.width,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    uploadCategory();
                  },
                  child: Text("Save", style: TextStyle(
                      color: Colors.white
                  ),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
