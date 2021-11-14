import 'package:bloc/bloc.dart';
import 'package:flutter_mvvm/model/user.dart';

class UserBloc extends Bloc<int, User> {
  UserBloc(User initialState) : super(UninitializedUser());

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.getUserFromAPI(event);
      yield user;
    } catch (_) {}
  }
}
