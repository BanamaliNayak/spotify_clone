import 'package:dartz/dartz.dart';
import 'package:muzic_app/core/usecase/usecase.dart';
import 'package:muzic_app/data/models/auth/signin_user_req.dart';
import 'package:muzic_app/domain/repository/auth/auth.dart';
import '../../../service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}
