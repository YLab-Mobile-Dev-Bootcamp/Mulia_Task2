import 'package:get/get.dart';
import 'package:task5_uif_lutter/model/product.dart';
import 'package:task5_uif_lutter/services/remote_api.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  //bentuknya list bukan objek
  RxList<Product> productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteApi.getProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
