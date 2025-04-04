import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/repo/home_repo.dart';
import 'package:bookly/core/errors/failur.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUsecase extends Usecase<List<BookEntity>, NoParam>
{
  FetchFeaturedBooksUsecase(this.homeRepo);
  final HomeRepo homeRepo;
  
  @override
  Future<Either<Failur, List<BookEntity>>> call([NoParam? param])
  {
    return homeRepo.fetchFeaturedBooks();
  }
  
}


abstract class Usecase<Type, Param>
{
  Future<Either<Failur, Type>> call([Param? param]);
}

abstract class NoParam{}