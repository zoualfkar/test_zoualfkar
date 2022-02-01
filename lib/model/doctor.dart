import 'package:json_annotation/json_annotation.dart';

part 'doctor.g.dart';

@JsonSerializable()
class Doctor{


  String? name;
  String? avatar;
  String? professionalTitle;
  String? patients;
  String? experience;
  String? profileView;
  String? basicInformation;
  List<String>? certificates;
  List<String>? companies;
  String? date;
  bool? isConfirmed;


  Doctor(
     {this.name,
       this.avatar,
      this.professionalTitle,
      this.patients,
      this.experience,
      this.profileView,
      this.basicInformation,
      this.certificates,
      this.companies,
       this.date,
       this.isConfirmed
     });

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorToJson(this);


}