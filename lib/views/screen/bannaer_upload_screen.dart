import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_admin/constants.dart';

class BannerUploadScreen extends StatelessWidget {
  static const String routeName = "/BannerUploadScreen";

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
                      child: Center(
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
                      onPressed: () {},
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
                onPressed: () {},
                child: Text("Save", style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ],
      ),
    );
  }
}
