part of '_index.dart';

abstract class Data {
  static Injected<FbAuthLoginData> get fbAuthLogin => _fbAuthLoginData;
  static Injected<FbAuthRegistData> get fbAuthRegist => _fbAuthRegistData;
  static Injected<HomeData> get home => _homeData;
  static Injected<ProductListData> get productList => _productListData;
  static Injected<ProductDetailData> get productDetail => _productDetailData;
  static Injected<ProductInputData> get productInput => _productInputData;
  static Injected<ProductEditData> get productEdit => _productEditData;
  static Injected<MovieListData> get movieList => _movieListData;
  static Injected<MovieDetailData> get movieDetail => _movieDetailData;
}

final _fbAuthLoginData = RM1.inj(FbAuthLoginData(), Ctrl.fbAuthLogin.init);
final _fbAuthRegistData = RM1.inj(FbAuthRegistData(), Ctrl.fbAuthRegist.init);
final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
final _productDetailData = RM1.inj(ProductDetailData(), Ctrl.productDetail.init);
final _productInputData = RM1.inj(ProductInputData(), Ctrl.productInput.init);
final _productEditData = RM1.inj(ProductEditData(), Ctrl.productEdit.init);
final _movieListData = RM1.inj(MovieListData(), Ctrl.movieList.init);
final _movieDetailData = RM1.inj(MovieDetailData(), Ctrl.movieDetail.init);
