// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'gran_tigris_webapp_event.dart';
part 'gran_tigris_webapp_state.dart';

class GranTigrisWebappBloc
    extends Bloc<GranTigrisWebappEvent, GranTigrisWebappState> {
  GranTigrisWebappBloc() : super(GranTigrisWebappInitial()) {
    on<GranTigrisWebappEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
