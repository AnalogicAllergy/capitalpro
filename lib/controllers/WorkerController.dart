import 'package:mobx/mobx.dart';
import '../models/worker.dart';

part 'WorkerController.g.dart';

class WorkerController = _WorkerControllerBase with _$WorkerController;

abstract class _WorkerControllerBase with Store {
  var worker = Worker();
}
