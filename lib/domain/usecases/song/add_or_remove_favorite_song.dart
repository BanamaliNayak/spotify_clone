import 'package:dartz/dartz.dart';
import 'package:muzic_app/core/usecase/usecase.dart';
import 'package:muzic_app/domain/repository/song/song.dart';
import '../../../service_locator.dart';

class AddOrRemoveFavoriteSongUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<SongsRepository>().addOrRemoveFavoriteSongs(params!);
  }
}
