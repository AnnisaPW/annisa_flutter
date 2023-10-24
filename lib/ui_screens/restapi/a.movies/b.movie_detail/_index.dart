import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.movie_detail.data.dart';
part 'b.movie_detail.ctrl.dart';
part 'c.movie_detail.view.dart';
part 'widgets/a.movie_detail.appbar.dart';
part 'widgets/b.movie_detail.fab.dart';
part 'widgets/c.movie_detail.backdrop.dart';
part 'widgets/d.movie_detail.content.dart';
part 'widgets/e.movie_detail.percent.dart';
part 'widgets/f.movie_detail.label.dart';
part 'widgets/g.movie_detail.poster.dart';
part 'widgets/h.movie_detail.title.dart';
part 'widgets/i.movie_detail.subtitle.dart';
part 'widgets/j.movie_detail.overview.dart';
part 'widgets/k.movie_detail.cast_view.dart';
part 'widgets/l.movie_detail.cast_name.dart';
part 'widgets/m.movie_detail.loadmore_cast.dart';

MovieDetailCtrl get _ct => Ctrl.movieDetail;
MovieDetailData get _dt => Data.movieDetail.st;

MovieServ get _sv => Serv.movie;
MovieProv get _pv => Prov.movie.st;
