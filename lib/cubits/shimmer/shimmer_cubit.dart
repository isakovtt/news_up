

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'shimmer_state.dart';

class ShimmerCubit extends Cubit<ShimmerState> {
  ShimmerCubit() : super(ShimmerInitial());
}
