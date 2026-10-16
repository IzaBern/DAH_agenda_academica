// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NavigationStore on _NavigationStoreBase, Store {
  Computed<bool>? _$isAgendaPageComputed;

  @override
  bool get isAgendaPage => (_$isAgendaPageComputed ??= Computed<bool>(
    () => super.isAgendaPage,
    name: '_NavigationStoreBase.isAgendaPage',
  )).value;
  Computed<bool>? _$isNewActivityPageComputed;

  @override
  bool get isNewActivityPage => (_$isNewActivityPageComputed ??= Computed<bool>(
    () => super.isNewActivityPage,
    name: '_NavigationStoreBase.isNewActivityPage',
  )).value;

  late final _$currentPageAtom = Atom(
    name: '_NavigationStoreBase.currentPage',
    context: context,
  );

  @override
  AppPage get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(AppPage value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$_NavigationStoreBaseActionController = ActionController(
    name: '_NavigationStoreBase',
    context: context,
  );

  @override
  void goToAgenda() {
    final _$actionInfo = _$_NavigationStoreBaseActionController.startAction(
      name: '_NavigationStoreBase.goToAgenda',
    );
    try {
      return super.goToAgenda();
    } finally {
      _$_NavigationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void goToNewActivity() {
    final _$actionInfo = _$_NavigationStoreBaseActionController.startAction(
      name: '_NavigationStoreBase.goToNewActivity',
    );
    try {
      return super.goToNewActivity();
    } finally {
      _$_NavigationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
isAgendaPage: ${isAgendaPage},
isNewActivityPage: ${isNewActivityPage}
    ''';
  }
}
