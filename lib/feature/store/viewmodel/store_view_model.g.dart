// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoreViewModel on _StoreViewModelBase, Store {
  final _$storeModelAtom = Atom(name: '_StoreViewModelBase.storeModel');

  @override
  List<StoreModel>? get storeModel {
    _$storeModelAtom.reportRead();
    return super.storeModel;
  }

  @override
  set storeModel(List<StoreModel>? value) {
    _$storeModelAtom.reportWrite(value, super.storeModel, () {
      super.storeModel = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_StoreViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$storeFetchAsyncAction = AsyncAction('_StoreViewModelBase.storeFetch');

  @override
  Future<void> storeFetch() {
    return _$storeFetchAsyncAction.run(() => super.storeFetch());
  }

  final _$_StoreViewModelBaseActionController =
      ActionController(name: '_StoreViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_StoreViewModelBaseActionController.startAction(
        name: '_StoreViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_StoreViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
storeModel: ${storeModel},
isLoading: ${isLoading}
    ''';
  }
}
