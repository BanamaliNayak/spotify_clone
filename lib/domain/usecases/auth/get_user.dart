import 'package:dartz/dartz.dart';
import 'package:muzic_app/core/usecase/usecase.dart';
import 'package:muzic_app/domain/repository/auth/auth.dart';
import '../../../service_locator.dart';

class GetUserUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<AuthRepository>().getUser();
  }
}
