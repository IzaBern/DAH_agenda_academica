// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ActivityStore on _ActivityStoreBase, Store {
  Computed<int>? _$totalQuantityComputed;

  @override
  int get totalQuantity => (_$totalQuantityComputed ??= Computed<int>(
    () => super.totalQuantity,
    name: '_ActivityStoreBase.totalQuantity',
  )).value;
  Computed<int>? _$completedQuantityComputed;

  @override
  int get completedQuantity => (_$completedQuantityComputed ??= Computed<int>(
    () => super.completedQuantity,
    name: '_ActivityStoreBase.completedQuantity',
  )).value;
  Computed<int>? _$pendingQuantityComputed;

  @override
  int get pendingQuantity => (_$pendingQuantityComputed ??= Computed<int>(
    () => super.pendingQuantity,
    name: '_ActivityStoreBase.pendingQuantity',
  )).value;
  Computed<int>? _$pendingTimeComputed;

  @override
  int get pendingTime => (_$pendingTimeComputed ??= Computed<int>(
    () => super.pendingTime,
    name: '_ActivityStoreBase.pendingTime',
  )).value;

  late final _$activitiesAtom = Atom(
    name: '_ActivityStoreBase.activities',
    context: context,
  );

  @override
  ObservableList<Activity> get activities {
    _$activitiesAtom.reportRead();
    return super.activities;
  }

  @override
  set activities(ObservableList<Activity> value) {
    _$activitiesAtom.reportWrite(value, super.activities, () {
      super.activities = value;
    });
  }

  late final _$_ActivityStoreBaseActionController = ActionController(
    name: '_ActivityStoreBase',
    context: context,
  );

  @override
  void addActivity(Activity a) {
    final _$actionInfo = _$_ActivityStoreBaseActionController.startAction(
      name: '_ActivityStoreBase.addActivity',
    );
    try {
      return super.addActivity(a);
    } finally {
      _$_ActivityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeActivity(int id) {
    final _$actionInfo = _$_ActivityStoreBaseActionController.startAction(
      name: '_ActivityStoreBase.removeActivity',
    );
    try {
      return super.removeActivity(id);
    } finally {
      _$_ActivityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void completedToggle(int id) {
    final _$actionInfo = _$_ActivityStoreBaseActionController.startAction(
      name: '_ActivityStoreBase.completedToggle',
    );
    try {
      return super.completedToggle(id);
    } finally {
      _$_ActivityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activities: ${activities},
totalQuantity: ${totalQuantity},
completedQuantity: ${completedQuantity},
pendingQuantity: ${pendingQuantity},
pendingTime: ${pendingTime}
    ''';
  }
}
