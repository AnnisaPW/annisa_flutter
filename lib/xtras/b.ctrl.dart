part of '_index.dart';

abstract class Ctrl {
  static CobaSatuCtrl get cobaSatu => CobaSatuCtrl();
  static CobaDuaCtrl get cobaDua => CobaDuaCtrl();
  static CobaTigaCtrl get cobaTiga => CobaTigaCtrl();
  static FbAuthLoginCtrl get fbAuthLogin => FbAuthLoginCtrl();
  static FbAuthRegistCtrl get fbAuthRegist => FbAuthRegistCtrl();
  static HomeCtrl get home => HomeCtrl();
  static ProductListCtrl get productList => ProductListCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static ProductInputCtrl get productInput => ProductInputCtrl();
  static ProductEditCtrl get productEdit => ProductEditCtrl();
}
