import 'package:dartz/dartz.dart';
import '../entities/medical_service.dart';

abstract class IMedicalServicesRepository {
  Future<Either<Failure, List<MedicalService>>> getMedicalServices();
  Future<Either<Failure, MedicalService>> getMedicalServiceById(String id);
  Future<Either<Failure, List<MedicalService>>> getMedicalServicesByCategory(
      String category);
  Future<Either<Failure, void>> bookMedicalService(
      String serviceId, DateTime appointmentTime);
  Future<Either<Failure, void>> cancelMedicalService(String serviceId);
  Future<Either<Failure, List<MedicalService>>> searchMedicalServices(
      String query);
}

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}

class CacheFailure extends Failure {
  const CacheFailure(String message) : super(message);
}

class NetworkFailure extends Failure {
  const NetworkFailure(String message) : super(message);
}
