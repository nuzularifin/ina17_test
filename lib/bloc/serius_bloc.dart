import 'package:bloc/bloc.dart';
import 'package:flutter_ina17_test/bloc/series_event.dart';
import 'package:flutter_ina17_test/bloc/series_state.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  SeriesBloc() : super(const SeriesState(seriesResult: '')) {
    on<GenerateSeries1>((event, emit) {
      emit(SeriesState(seriesResult: _generateSeries1(event.n)));
    });

    on<GenerateSeries2>((event, emit) {
      emit(SeriesState(seriesResult: _generateSeries2(event.n)));
    });

    on<GenerateSeries3>((event, emit) {
      emit(SeriesState(seriesResult: _generateSeries3(event.n)));
    });

    on<GenerateSeries4>((event, emit) {
      emit(SeriesState(seriesResult: _generateSeries4(event.n)));
    });
  }
}

String _generateSeries1(int n) {
  return List.generate(n, (index) => (index + 1).toString()).join(' ');
}

String _generateSeries2(int n) {
  final series = List.generate(n, (index) => (index + 1).toString());
  return series.join(' ') + ' ' + series.reversed.skip(1).join(' ');
}

String _generateSeries3(int n) {
  return List.generate(n, (index) => '${(index + 1) * 10 + index}').join(' ');
}

String _generateSeries4(int n) {
  return List.generate(n, (index) {
    int num = index + 1;
    if (num % 5 == 0) return 'LIMA';
    if (num % 7 == 0) return 'TUJUH';
    return num.toString();
  }).join();
}
