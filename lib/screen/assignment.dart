import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/product_bloc/product_bloc.dart';
import '../customer_widget/product_list_view.dart';
import '../model/product_model.dart';

class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(GetAllProduct());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment"),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProductDataLoaded) {
          return ProductListView(context, state.productList);
        } else if (state is ProductError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}


