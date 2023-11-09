import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalil/core/utils/app_strings.dart';
import 'package:dalil/features/home/data/models/historical_periods_models.dart';
import 'package:dalil/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<HistoricalPeriodsModel> historicalPeriods = [];

  getHistoricalPeriods() async {
    try {
      emit(GetHistoricalPeriodsLoading());
      await FirebaseFirestore.instance
          .collection(FireBaseStrings.historicalPeriods)
          .get()
          .then((value) => value.docs.forEach((element) {
                historicalPeriods
                    .add(HistoricalPeriodsModel.fromJson(element.data()));
              }));
      emit(GetHistoricalPeriodsSuccess());
    } catch (e) {
      emit(GetHistoricalPeriodsFailure(errMessage: e.toString()));
    }
  }
}
