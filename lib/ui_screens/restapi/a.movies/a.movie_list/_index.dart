import 'package:annisa_flutter/xtras/_index.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/_index.dart';

part 'a.movie_list.data.dart';
part 'b.movie_list.ctrl.dart';
part 'c.movie_list.view.dart';
part 'widgets/a.movie_list.appbar.dart';
part 'widgets/b.movie_list.fab.dart';
part 'widgets/c.movie_list.loadmore.dart';
part 'widgets/d.movie_list.cards.dart';
part 'widgets/e.movie_list.pull_text.dart';
part 'widgets/f.movie_list.card.dart';
part 'widgets/g.movie_list.cover.dart';
part 'widgets/h.movie_list.title.dart';
part 'widgets/i.movie_list.description.dart';
part 'widgets/j.movie_list.rating.dart';

MovieListCtrl get _ct => Ctrl.movieList;
MovieListData get _dt => Data.movieList.st;

MovieServ get _sv => Serv.movie;
MovieProv get _pv => Prov.movie.st;
