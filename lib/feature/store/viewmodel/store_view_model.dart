import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_weekend/core/base_view_model.dart';

import '../model/store_model.dart';
import '../service/store_service.dart';
part 'store_view_model.g.dart';

class StoreViewModel = _StoreViewModelBase with _$StoreViewModel;

abstract class _StoreViewModelBase with Store, BaseViewModel {
  late IStoreService storeService;

  @observable
  List<StoreModel>? storeModel;
  @observable
  bool isLoading = true;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> storeFetch() async {
    changeLoading();

    storeModel = await storeService.storeList();

    changeLoading();
  }

  @override
  void setContext(BuildContext context) {}
  @override
  void init() {
    storeService = StoreService(networkManager);
    storeFetch();
  }
}
