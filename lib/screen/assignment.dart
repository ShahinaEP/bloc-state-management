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

// image.add(productsModel.offerProducts![itemIndex].image!
//     .split("{\"thumbnail\":")[1]
//     .split(",\"original\":")[0]
//     .replaceAll(new RegExp(r'\/'), r'\')
//     .replaceAll(new RegExp(r'\\\\'), r'/')
//     .split('"')[1]);
// image.add(productsModel.offerProducts![itemIndex].image!.split("{\"thumbnail\":")[1].split(",\"original\":")[0].replaceAll(new RegExp(r'\/'), r'\').replaceAll(new RegExp(r'\\\\'), r'/'));
// print(image);

// Image.network( productsModel.offerProducts![itemIndex].image!.trim().split("{\"thumbnail\":")[1].split(",\"original\":")[0].replaceAll(new RegExp(r'\/'), r'\').replaceAll(new RegExp(r'\\\\'), r'/').toString(),),
// Container(
// //   // decoration: BoxDecoration(
// //   //   borderRadius: \
// //   // ),
// //   // constraints: BoxConstraints(minWidth: 50, minHeight: 50),split
//     child: Image.network(
//       // "https://grocery.ebasket.com.bd/api/storage/5861/conversions/25e-thumbnail.jpg",
//       productsModel.offerProducts![itemIndex].image!.trim().split("{\"thumbnail\":")[1].split(",\"original\":")[0].replaceAll(new RegExp(r'\/'), r'\').replaceAll(new RegExp(r'\\\\'), r'/').toString(),
//       // "https://grocery.ebasket.com.bd/api/storage/${productsModel.offerProducts![itemIndex].image!.split("storage\/")}",
//       width: 50,
//       height: 60,
//     )),
// Text(profileModel.data![itemIndex].id.toString(), style: const TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 25
// ),),
// Image.network(image[itemIndex]),
// Image.network(
//     productsModel.offerProducts![itemIndex].image!.trim().split("{\"thumbnail\":")[1].split(",\"original\":")[0].replaceAll(new RegExp(r'\/'), r'\').replaceAll(new RegExp(r'\\\\'), r'/').trim()),
// backgroundImage: NetworkImage(image[itemIndex]),
// backgroundImage:  NetworkImage(productsModel.offerProducts![itemIndex].image!.split("{\"thumbnail\":")[1].split(",\"original\":")[0].replaceAll(new RegExp(r'\/'), r'\').replaceAll(new RegExp(r'\\\\'), r'/')),


