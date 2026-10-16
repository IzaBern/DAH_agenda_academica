import 'package:agenda_academica/models/app_page.dart';
import 'package:mobx/mobx.dart';
part 'navigation_store.g.dart';

class NavigationStore = _NavigationStoreBase with _$NavigationStore;

abstract class _NavigationStoreBase with Store {
  @observable
  AppPage currentPage = AppPage.agenda;

  @computed
  bool get isAgendaPage => currentPage == AppPage.agenda;

  @computed
  bool get isNewActivityPage => currentPage == AppPage.newActivity;

  @action
  void goToAgenda() {
    currentPage = AppPage.agenda;
  }

  @action
  void goToNewActivity() {
    currentPage = AppPage.newActivity;
  }
}