import 'package:example/features/home/domain/entities/scan_stats.dart';

abstract class HomeRepository {
  Future<ScanStats> getScanStats();
  Future<void> refreshStats();
  Future<void> takePhoto();
  Future<void> viewHistory();
  Future<void> viewServices();
}
