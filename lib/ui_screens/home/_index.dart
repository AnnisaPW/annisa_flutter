import 'package:annisa_flutter/ui_widgets/spaces/_index.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.home.data.dart';
part 'b.home.ctrl.dart';
part 'c.home.view.dart';
part 'widgets/a.home.appbar.dart';
part 'widgets/b.home.fab.dart';
part 'widgets/c.home.drawer.dart';
part 'widgets/d.home.profile.dart';
part 'widgets/e.home.content.dart';
part 'widgets/f.home.cards.dart';
part 'widgets/g.home.pageview.dart';
part 'widgets/h.home.pageview_slide.dart';
part 'widgets/i.home.pageview_indicator.dart';
part 'widgets/z.home.coba.dart';

HomeData get _dt => Data.home.st;
HomeCtrl get _ct => Ctrl.home;

// static HomeCtrl get home => HomeCtrl();
// final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
// static Injected<HomeData> get home => _homeData;
// export 'home/_index.dart';

