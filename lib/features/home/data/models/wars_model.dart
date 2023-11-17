import 'package:dalil/core/models/data_model.dart';
import 'package:dalil/core/utils/app_strings.dart';

class WarsModel extends DataModel {
  WarsModel({
    required super.name,
    required super.image,
    required super.description,
  });

  factory WarsModel.fromjson(jsonData) {
    return WarsModel(
     name: jsonData[FireBaseStrings.name],
      image: jsonData[FireBaseStrings.image],
      description: jsonData[FireBaseStrings.description],
    );
  }
}
