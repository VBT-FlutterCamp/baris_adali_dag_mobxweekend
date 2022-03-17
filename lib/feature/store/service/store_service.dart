import 'package:vexana/vexana.dart';

import '../model/store_model.dart';

abstract class IStoreService {
  final INetworkManager networkManager;

  IStoreService(this.networkManager);
  Future<List<StoreModel>?> storeList();
}

class StoreService extends IStoreService {
  StoreService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<StoreModel>?> storeList() async {
    final response = await networkManager.send<StoreModel, List<StoreModel>>(
        "products?limit=5", //path base sonraki url
        parseModel: StoreModel(),
        method: RequestType.GET);
    print('storelist-> ${response.data}');
    return response.data;
  }
}
