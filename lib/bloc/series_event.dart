import 'package:equatable/equatable.dart';

abstract class SeriesEvent extends Equatable {
  const SeriesEvent();

  @override
  List<Object?> get props => [];
}

class GenerateSeries1 extends SeriesEvent {
  final int n;

  const GenerateSeries1({required this.n});

  @override
  List<Object?> get props => [n];
}

class GenerateSeries2 extends SeriesEvent {
  final int n;

  const GenerateSeries2({required this.n});

  @override
  List<Object?> get props => [n];
}

class GenerateSeries3 extends SeriesEvent {
  final int n;

  const GenerateSeries3({required this.n});

  @override
  List<Object?> get props => [n];
}

class GenerateSeries4 extends SeriesEvent {
  final int n;

  const GenerateSeries4({required this.n});

  @override
  List<Object?> get props => [n];
}
