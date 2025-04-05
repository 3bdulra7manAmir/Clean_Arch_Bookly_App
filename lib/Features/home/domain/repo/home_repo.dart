import 'package:bookly/features/home/domain/entites/book_entity.dart';
import 'package:bookly/core/errors/failur.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failur, List<BookEntity>>> fetchNewestBooks();
  Future<Either<Failur, List<BookEntity>>> fetchFeaturedBooks();
}
