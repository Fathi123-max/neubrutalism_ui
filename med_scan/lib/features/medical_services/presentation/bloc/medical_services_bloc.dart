import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/medical_service.dart';
import '../../domain/repositories/medical_services_repository.dart';

// Events
abstract class MedicalServicesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetMedicalServices extends MedicalServicesEvent {}

class GetMedicalServicesByCategory extends MedicalServicesEvent {
  final String category;
  GetMedicalServicesByCategory(this.category);

  @override
  List<Object?> get props => [category];
}

class SearchMedicalServices extends MedicalServicesEvent {
  final String query;
  SearchMedicalServices(this.query);

  @override
  List<Object?> get props => [query];
}

class BookMedicalService extends MedicalServicesEvent {
  final String serviceId;
  final DateTime appointmentTime;

  BookMedicalService(this.serviceId, this.appointmentTime);

  @override
  List<Object?> get props => [serviceId, appointmentTime];
}

// States
abstract class MedicalServicesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MedicalServicesInitial extends MedicalServicesState {}

class MedicalServicesLoading extends MedicalServicesState {}

class MedicalServicesLoaded extends MedicalServicesState {
  final List<MedicalService> services;

  MedicalServicesLoaded(this.services);

  @override
  List<Object?> get props => [services];
}

class MedicalServicesError extends MedicalServicesState {
  final String message;

  MedicalServicesError(this.message);

  @override
  List<Object?> get props => [message];
}

// BLoC
class MedicalServicesBloc
    extends Bloc<MedicalServicesEvent, MedicalServicesState> {
  final IMedicalServicesRepository repository;

  MedicalServicesBloc(this.repository) : super(MedicalServicesInitial()) {
    on<GetMedicalServices>(_onGetMedicalServices);
    on<GetMedicalServicesByCategory>(_onGetMedicalServicesByCategory);
    on<SearchMedicalServices>(_onSearchMedicalServices);
    on<BookMedicalService>(_onBookMedicalService);
  }

  Future<void> _onGetMedicalServices(
    GetMedicalServices event,
    Emitter<MedicalServicesState> emit,
  ) async {
    emit(MedicalServicesLoading());
    final result = await repository.getMedicalServices();
    result.fold(
      (failure) => emit(MedicalServicesError(failure.message)),
      (services) => emit(MedicalServicesLoaded(services)),
    );
  }

  Future<void> _onGetMedicalServicesByCategory(
    GetMedicalServicesByCategory event,
    Emitter<MedicalServicesState> emit,
  ) async {
    emit(MedicalServicesLoading());
    final result =
        await repository.getMedicalServicesByCategory(event.category);
    result.fold(
      (failure) => emit(MedicalServicesError(failure.message)),
      (services) => emit(MedicalServicesLoaded(services)),
    );
  }

  Future<void> _onSearchMedicalServices(
    SearchMedicalServices event,
    Emitter<MedicalServicesState> emit,
  ) async {
    emit(MedicalServicesLoading());
    final result = await repository.searchMedicalServices(event.query);
    result.fold(
      (failure) => emit(MedicalServicesError(failure.message)),
      (services) => emit(MedicalServicesLoaded(services)),
    );
  }

  Future<void> _onBookMedicalService(
    BookMedicalService event,
    Emitter<MedicalServicesState> emit,
  ) async {
    emit(MedicalServicesLoading());
    final result = await repository.bookMedicalService(
      event.serviceId,
      event.appointmentTime,
    );
    result.fold(
      (failure) => emit(MedicalServicesError(failure.message)),
      (_) => add(GetMedicalServices()),
    );
  }
}
