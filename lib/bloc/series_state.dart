import 'package:equatable/equatable.dart';

class SeriesState extends Equatable {
  final String seriesResult;

  const SeriesState({required this.seriesResult});

  @override
  List<Object?> get props => [seriesResult];
}
