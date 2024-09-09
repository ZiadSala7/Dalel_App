import 'package:dalel_app/features/register/presentation/view_models/cubit/register_cubit_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterCubitStates> {
  RegisterCubit() : super(InitialStateRegister());

  registerMethod() async {}
}
