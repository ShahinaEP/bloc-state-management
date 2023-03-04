import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/user_bloc/user_bloc.dart';
import '../customer_widget/user_list_vied.dart';
import '../model/user_model.dart';
class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  @override
  void initState(){
    super.initState();
    context.read<UserBloc>().add(GetAllUser());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All User"),
        centerTitle: true,
      ),
      body:  BlocBuilder<UserBloc, UserState>(
          builder: (context, state){
            if(state is UserLoading){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else if(state is UserDataLoaded){
              return userListView(context, state.userList);

            }else if(state is UserError ){
              return Center(
                child: Text(state.message),
              );
            }
            else{
              return Container();
            }
          }
      ),
    );
  }


}
