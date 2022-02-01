// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doctor _$DoctorFromJson(Map<String, dynamic> json) => Doctor(
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      professionalTitle: json['professionalTitle'] as String?,
      patients: json['patients'] as String?,
      experience: json['experience'] as String?,
      profileView: json['profileView'] as String?,
      basicInformation: json['basicInformation'] as String?,
      certificates: (json['certificates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companies: (json['companies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      date: json['date'] as String?,
      isConfirmed: json['isConfirmed'] as bool?,
    );

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
      'professionalTitle': instance.professionalTitle,
      'patients': instance.patients,
      'experience': instance.experience,
      'profileView': instance.profileView,
      'basicInformation': instance.basicInformation,
      'certificates': instance.certificates,
      'companies': instance.companies,
      'date': instance.date,
      'isConfirmed': instance.isConfirmed,
    };
