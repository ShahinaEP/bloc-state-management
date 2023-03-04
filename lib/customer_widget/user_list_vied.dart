import 'package:flutter/material.dart';

import '../model/user_model.dart';
Widget userListView(BuildContext context, List<UserModel>userList){
  return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (context, itemIndex){

        UserModel userModel = userList[itemIndex];

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              leading:  Text(userModel.id.toString(), style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25
              ),),
              title: Text(userModel.name.toString(),style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),),
              // textColor: Colors.black45,
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userModel.username.toString(),style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                  ),),
                  Text("Email: ${userModel.email}",style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                  ),),
                ],
              ),
            ),
          ),
        );
      }
  );
}