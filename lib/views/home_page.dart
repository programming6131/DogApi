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
import 'package:dog_app/constants/constants.dart';
import 'package:dog_app/main.dart';
import 'package:dog_app/services/request.dart';
import 'package:dog_app/views/detail_page.dart';
import 'package:dog_app/widgets/item_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
        appBar: AppBar(title: Text('Random Dogs Demo')),
        body: FutureBuilder(
          
          future: ApiService().getDogs(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(names);
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
              case ConnectionState.active:
                return Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                return     Padding(
                  padding:  EdgeInsets.symmetric(horizontal: kDefaultPaddin,vertical: kDefaultPaddin),
                  child: GridView.builder(
                      itemCount: snapshot.data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: kDefaultPaddin,
                        crossAxisSpacing: kDefaultPaddin,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (context, index) => ItemCard(
                        name: names[index],
                            url: snapshot.data[index],
                            press: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    url: snapshot.data[index],
                                    name: names[index],
                                  ),
                                )),
                          )),
                );
            }
          },
        ),
      );
  }
}