part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {
}
class SearchDataEmpty extends SearchState {
}

class SearchDataLoading extends SearchState {

  final bool searchDataIsLoading;
  SearchDataLoading(this.searchDataIsLoading);
}
class SearchDataIsLoaded extends SearchState {

  final PeopleDataModel searchData;
  SearchDataIsLoaded(this.searchData);
}
class SearchDataError extends SearchState {

  final String error;
  SearchDataError(this.error);
}