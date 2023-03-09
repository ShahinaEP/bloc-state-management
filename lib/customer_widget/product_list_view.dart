import 'dart:convert';

import 'package:flutter/material.dart';
import '../model/product_model.dart';
Widget ProductListView(BuildContext context,   prouctList){
  List images =[];
  ProductsModel productsModel = prouctList;

  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: prouctList.offerProducts?.length,
            itemBuilder: (context, itemIndex) {
              final data = jsonDecode(productsModel.offerProducts![itemIndex].image!);
              images.add(data);
              // print(images);
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child:Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:NetworkImage(images[itemIndex]['thumbnail'].toString()),
                                radius: 50.0,
                              ),

                              title: Text(
                                "Name: ${productsModel.offerProducts![itemIndex].name}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),

                              subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text(),
                                    Text(
                                      "Price:${productsModel.offerProducts![itemIndex].price}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      "InStock: ${productsModel.offerProducts![itemIndex].inStock}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                    ),


                                  ]),
                            ),
                            SizedBox( height:23,),
                            SizedBox(
                              // height:200,
                              child:Image.network( jsonDecode(productsModel.offerProducts![itemIndex].image!)['original'].toString())

                            ),

                          ],
                        ),
                      ),
                    ),


              );
            }),
      ],
    ),
  );
}

// backgroundColor: Colors.black87,
// backgroundImage: NetworkImage(productsModel.offerProducts![itemIndex].image!
//     .split("{\"thumbnail\":")[1]
//     .split(",\"original\":")[0]
//     .replaceAll(new RegExp(r'\/'), r'\')
//     .replaceAll(new RegExp(r'\\\\'), r'/')
//     .split('"')[1]),