import 'package:mobx/mobx.dart';
part 'store_view_model.g.dart';

class StoreViewModel = _StoreViewModelBase with _$StoreViewModel;

abstract class _StoreViewModelBase with Store {}
