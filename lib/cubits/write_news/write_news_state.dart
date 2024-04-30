part of 'write_news_cubit.dart';

@immutable
sealed class WriteNewsState {}

final class WriteNewsInitial extends WriteNewsState {}
final class WriteNewsLoading extends WriteNewsState {}
final class WriteNewsSuccess extends WriteNewsState {}
final class WriteNewsError extends WriteNewsState {}
