import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_weekend/core/base_view.dart';

import '../viewmodel/store_view_model.dart';

class StoreView extends StatelessWidget {
  final String title = "Mobx-Vexana Store";
  @override
  Widget build(BuildContext context) {
    return BaseView<StoreViewModel>(
        viewModel: StoreViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, StoreViewModel viewModel) {
          // var vm = viewModel.storeModel;
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Observer(
              builder: (((_) {
                return viewModel.isLoading
                    ? _buildPage(viewModel)
                    : _progressIndicator();
              })),
            ),
          );
        });
  }

  Center _progressIndicator() {
    return Center(
      child: Container(
        child: CircularProgressIndicator(),
      ),
    );
  }

  ListView _buildPage(StoreViewModel viewModel) {
    return ListView.builder(
        itemCount: viewModel.storeModel?.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            child: ListTile(
              leading: Image.network(viewModel.storeModel?[index].image ?? ' ',
                  height: 50, width: 50),
              title: Text(viewModel.storeModel?[index].title ?? ''),
              subtitle: Text(viewModel.storeModel?[index].description ?? ''),
            ),
          );
        });
  }
}
