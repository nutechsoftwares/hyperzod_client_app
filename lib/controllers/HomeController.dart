import 'package:mvc_pattern/mvc_pattern.dart';
import '../models/banner.dart';
import '../models/category.dart';
import '../models/merchant.dart';

class HomeController extends ControllerMVC {
  List<Banner> banners;
  List<Category> categories;
  List<Merchant> merchants;

  HomeController() {
    _getData();
  }

  Future _getData() async {
    banners = [
      new Banner(
          url:
              'https://www.diabetes.org/sites/default/files/styles/paragraph_50_50/public/2019-08/Diabetes-Superfoods-min.jpg'),
      new Banner(
        url:
            'https://image.freepik.com/free-photo/top-view-fast-food-with-copy-space_23-2148273099.jpg',
      )
    ];
  }
}
