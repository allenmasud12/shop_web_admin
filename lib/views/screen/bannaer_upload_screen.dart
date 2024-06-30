import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shop_admin/constants.dart';

import '../../widget/banner_widget.dart';

class BannerUploadScreen extends StatefulWidget {
  static const String routeName = "/BannerUploadScreen";

  @override
  State<BannerUploadScreen> createState() => _BannerUploadScreenState();
}

class _BannerUploadScreenState extends State<BannerUploadScreen> {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  dynamic _image;

  String? fileName;

  pickImage()async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false, type: FileType.image);

    if(result!=null){
      setState(() {
        _image = result.files.first.bytes;
        fileName = result.files.first.name;
      });
    }
  }

  _uploadBannersToStorge(dynamic image)async{
   Reference ref = _storage.ref().child("banners").child(fileName!);
   UploadTask uploadTask = ref.putData(image);

  TaskSnapshot snapshot = await uploadTask;
 String downloadUrl = await snapshot.ref.getDownloadURL();

 return downloadUrl;
  }

  uploadToFirebaseStore()async{
    EasyLoading.show();
    if(_image!=null){
   String imageUrl = await _uploadBannersToStorge(_image);
   
   await _firestore.collection('banners').doc(fileName).set({
     'image': imageUrl,
   }).whenComplete((){
     EasyLoading.dismiss();

     setState(() {
       _image = null;
     });
   });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              "Banner",
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
                      child: _image!=null? Image.memory(_image, fit: BoxFit.cover,) : Center(
                        child: Text("Banner"),
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
                      child: Text("Upload Banner",style: TextStyle(
                        color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
              20.width,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  uploadToFirebaseStore();
                },
                child: Text("Save", style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
          Divider(color: Colors.grey,),
          Text("Banner", style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),),
          BannerWidget(),
        ],
      ),
    );
  }
}
