part of 'fetch_notes_cubit.dart';

@immutable
sealed class FetchNotesState {}

final class FetchNotesInitial extends FetchNotesState {}

final class FetchNotesCompletely extends FetchNotesState {}

final class FetchNotesEmpty extends FetchNotesState {
  final String empty;

  FetchNotesEmpty({required this.empty});
}
