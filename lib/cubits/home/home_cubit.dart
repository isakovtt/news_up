import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsup_app/utils/enums/post_view_type.dart';
import 'package:rxdart/rxdart.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final postViewTypeSubject = BehaviorSubject.seeded(PostViewType.grid);
   final selectedCategorySubject = BehaviorSubject<String>.seeded('Trending');


  void changeViewToList() {
    postViewTypeSubject.value = PostViewType.list;
  }

  void changeViewToGrid() {
    postViewTypeSubject.value = PostViewType.grid;
  }

  @override
  Future<void> close() {
    postViewTypeSubject.close();
    selectedCategorySubject.close();
    return super.close();
  }
}
