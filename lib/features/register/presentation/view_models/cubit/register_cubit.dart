import 'package:dalel_app/features/register/presentation/view_models/cubit/register_cubit_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterCubitStates> {
  RegisterCubit() : super(InitialStateRegister());
  String firstName = '';
  String lastName = '';
  String emailAddress = '';
  String password = '';

  registerMethod(String email, String password) async {
    try {
      emit(LoadingStateRegister());
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(SuccessStateRegister());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          FailureStateRegister(
            errMessage: 'The password provided is too weak.',
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          FailureStateRegister(
            errMessage: 'The account already exists for that email.',
          ),
        );
      }
    } catch (e) {
      emit(
        FailureStateRegister(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
