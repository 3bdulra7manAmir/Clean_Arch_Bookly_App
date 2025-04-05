import 'package:bookly/features/home/domain/entites/book_entity.dart';
import 'package:bookly/features/home/domain/repo/home_repo.dart';
import 'package:bookly/core/errors/failur.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUsecase extends Usecase<List<BookEntity>, NoParam> {
  FetchNewestBooksUsecase(this.homeRepo);
  final HomeRepo homeRepo;

  @override
  Future<Either<Failur, List<BookEntity>>> call([NoParam? param]) {
    return homeRepo.fetchNewestBooks();
  }
}

abstract class Usecase<Type, Param> {
  Future<Either<Failur, Type>> call([Param? param]);
}

abstract class NoParam {}
