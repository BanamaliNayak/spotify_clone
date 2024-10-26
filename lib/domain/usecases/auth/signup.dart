import 'package:dartz/dartz.dart';
import 'package:muzic_app/core/usecase/usecase.dart';
import 'package:muzic_app/domain/repository/auth/auth.dart';
import '../../../data/models/auth/create_user_req.dart';
import '../../../service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return sl<AuthRepository>().signup(params!);
  }
}
