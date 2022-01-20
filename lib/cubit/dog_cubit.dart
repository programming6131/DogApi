
// import 'package:bloc/bloc.dart';
// import 'package:dog_app/models/dogs_model.dart';
// import 'package:dog_app/services/request.dart';
// import 'package:equatable/equatable.dart';

// part 'dog_state.dart';

// class DogCubit extends Cubit<DogState> {
//   DogCubit() : super(DogInitial());

//  getDogs() async {
//     emit(DogLoading());
//     try {
//       var dogs = await ApiService.fetchDog(
//       );
//       emit(DogLoaded(dogs: dogs));
//     } catch (e) {
//       emit(DogFailed(error: e.toString()));
//     }
//   }
// }
