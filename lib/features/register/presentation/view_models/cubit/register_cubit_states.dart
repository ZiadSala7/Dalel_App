abstract class RegisterCubitStates {}

class InitialStateRegister extends RegisterCubitStates {}

class LoadingStateRegister extends RegisterCubitStates {}

class SuccessStateRegister extends RegisterCubitStates {}

class FailureStateRegister extends RegisterCubitStates {
  final String errMessage;
  FailureStateRegister({required this.errMessage});
}
