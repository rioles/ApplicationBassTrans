// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Worker extends Equatable {
  String idWorker;
  String imgUrlWorker;
  String nameWorker;
  String lastNameWorker;
  String typeWorker;
  double reference;
  String phoneWorker;
  String garantWorker;
  String addressWorker;

  Worker(
      {required this.idWorker,
      required this.imgUrlWorker,
      required this.nameWorker,
      required this.lastNameWorker,
      required this.typeWorker,
      required this.reference,
      required this.phoneWorker,
      required this.garantWorker,
      required this.addressWorker});

  Worker copy({
    String? idWorker,
    String? imgUrlWorker,
    String? nameWorker,
    String? lastNameWorker,
    String? typeWorker,
    double? reference,
    String? phoneWorker,
    String? garantWorker,
    String? addressWorker,
  }) =>
      Worker(
        idWorker: idWorker ?? this.idWorker,
        imgUrlWorker: imgUrlWorker ?? this.imgUrlWorker,
        addressWorker: addressWorker ?? this.addressWorker,
        garantWorker: garantWorker ?? this.garantWorker,
        lastNameWorker: lastNameWorker ?? this.lastNameWorker,
        nameWorker: nameWorker ?? this.nameWorker,
        phoneWorker: phoneWorker ?? this.phoneWorker,
        reference: reference ?? this.reference,
        typeWorker: typeWorker ?? this.typeWorker,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        nameWorker,
        lastNameWorker,
        typeWorker,
        reference,
        phoneWorker,
        garantWorker,
        addressWorker
      ];
}
