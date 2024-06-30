import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shop_admin/constants.dart';
import 'package:shop_admin/widget/category_widget.dart';
import 'package:shop_admin/widget/heading_text.dart';

class CategoryScreen extends StatefulWidget {
  static const String routeName = "/CategoryScreen";

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  dynamic _image;
  String? fileName;

  late String categoryName;

  pickImage()async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false, type: FileType.image);

    if(result!=null){
      setState(() {
        _image = result.files.first.bytes;
        fileName = result.files.first.name;
      });
    }
  }

  _uploadCategoryToStorge(dynamic image)async{
    Reference ref = _storage.ref().child("CategoryImage").child(fileName!);
    UploadTask uploadTask = ref.putData(image);

    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();

    return downloadUrl;
  }

  uploadCategory()async{
    EasyLoading.show();
    if(_formkey.currentState!.validate()){
    String imageUrl = await _uploadCategoryToStorge(_image);

    await _firestore.collection('categories').doc(fileName).set({
      'image': imageUrl,
      'categoryName': categoryName,
    }).whenComplete((){
      EasyLoading.dismiss();
      setState(() {
        _image = null;
        _formkey.currentState!.reset();
      });
    });
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
              child: HeadingText(
                title: "Category",
              )
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
                        child: _image != null
                            ?Image.memory(_image, fit: BoxFit.cover,)
                            :Center(
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
                      pickImage();
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
                      onChanged: (value){
                        categoryName = value;
                      },
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(color: Colors.grey,),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: HeadingText(
                title: "Categories",
              ),
            ),
            CategoryWidget()
          ],
        ),
      ),
    );
  }
}
