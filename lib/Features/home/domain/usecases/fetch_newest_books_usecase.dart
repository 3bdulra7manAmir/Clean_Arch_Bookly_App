import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/repo/home_repo.dart';
import 'package:bookly/core/errors/failur.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUsecase
{
  FetchNewestBooksUsecase(this.homeRepo);
  final HomeRepo homeRepo;

  Future< Either< Failur, List<BookEntity> > > fetchNewestBooks() async
  {
    // if there was a permission for the user that he could fetch it or he can't that permission check op will be done in here.
    return await homeRepo.fetchNewestBooks();
  }
}

  