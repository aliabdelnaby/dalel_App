import '../../../../core/models/data_model.dart';
import '../../../../core/utils/app_strings.dart';
import 'wars_model.dart';

class HistoricalPeriodsModel extends DataModel {
  final List<WarsModel> wars;

  HistoricalPeriodsModel({
    required super.name,
    required super.image,
    required super.description,
    required this.wars,
  });
  factory HistoricalPeriodsModel.fromJson(jsonData, warsList) {
    return HistoricalPeriodsModel(
      name: jsonData[FireBaseStrings.name],
      image: jsonData[FireBaseStrings.image],
      description: jsonData[FireBaseStrings.description],
      wars: warsList,
    );
  }
}
