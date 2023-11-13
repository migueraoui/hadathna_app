import 'package:bloc/bloc.dart';
import 'package:hadathna_app/features/sahihs/models/hadith.dart';
import 'package:hadathna_app/features/sahihs/repository/hadiths_repository.dart';
import 'package:meta/meta.dart';

part 'hadiths_state.dart';

class HadithsCubit extends Cubit<HadithsState> {
  HadithsCubit(this.hadithsRepo) : super(HadithsInitial());
  final HadithsRepo hadithsRepo;
  getHadiths(String source,int start , end ){
    emit(HadithsLoading());
    hadithsRepo.getHadithsByBook(source).then((value) => emit(HadithsLoaded(hadithsList: value.getRange(start, end).toList())));
  
  }
}
