import 'package:agenda_academica/core/data/mock_data.dart';
import 'package:agenda_academica/models/activity.dart';
import 'package:mobx/mobx.dart';
part 'activity_store.g.dart';

class ActivityStore = _ActivityStoreBase with _$ActivityStore;

abstract class _ActivityStoreBase with Store {
  @observable
  ObservableList<Activity> activities = ObservableList.of(activityList);

  @computed
  int get totalQuantity => activities.length;

  @computed
  int get completedQuantity => activities.where((a) => a.completed).length;

  @computed
  int get pendingQuantity => totalQuantity - completedQuantity;

  @computed
  int get pendingTime =>
      activities.where((a) => !a.completed).fold(0, (s, a) => s + a.time);

  @action
  void addActivity(Activity a) {
    activities.add(a);
  }

  @action
  void removeActivity(int id) {
    activities.removeWhere((a) => a.id == id);
  }

  @action
  void completedToggle(int id) {
    final i = activities.indexWhere((a) => a.id == id);
    if (i == -1) return;
    activities[i] = activities[i].copyWith(completed: !activities[i].completed);
  }
}
