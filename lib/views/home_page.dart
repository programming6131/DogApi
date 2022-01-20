// import 'package:dog_app/cubit/dog_cubit.dart';
// import 'package:dog_app/models/dogs_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//  var dogs =    context.read<DogCubit>().getDogs();
//     print("This is your data");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dogs"),
//       ),
//       body: BlocBuilder<DogCubit, DogState>(
//         builder: (context, state) {
//           if (state is DogLoading) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//          else if(state is DogLoaded){
//             return ListView(

//               children: List.generate(state.dogs.message!.length,
//                   (index) => SingleDog(dog: state.dogs.message![index]))
//             );
//           }else{
//           return Container(
//           child: Center(
//             child: Text("No  dogs found!"),
//           ),
//         );
//           }
//         },
//       ),
//     );
//   }
// }
// class SingleDog extends StatelessWidget {
//   final List<String>? dog;
//   const SingleDog({ Key? key, required this.dog }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//   var  name = dog![0];
//     return ListTile(
//       leading: Text("$name"),
//     );
//   }
// }
