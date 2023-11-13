import 'package:bloc/bloc.dart';
import 'package:hadathna_app/features/sahihs/models/sahih.dart';
import 'package:hadathna_app/features/sahihs/repository/sahihs_repository.dart';
import 'package:meta/meta.dart';

part 'sahihs_state.dart';

class SahihsCubit extends Cubit<SahihsState> {
  SahihsCubit(this.sahihRepository) : super(SahihsInitial());
  final SahihRepository sahihRepository;
  getSahihs(){
    emit(SahihsLoading());
    sahihRepository.getSahihs().then((value) => emit(SahihsLoaded(sahihsList: value)));
  }
}
