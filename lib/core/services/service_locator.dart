import 'package:dalel_app/features/register/presentation/view_models/cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<RegisterCubit>(RegisterCubit());
}
