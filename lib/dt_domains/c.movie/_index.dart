import 'package:annisa_flutter/xtras/_index.dart';
import 'package:states_rebuilder/scr/state_management/extensions/type_extensions.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../../app/_index.dart';
import '../../dt_sources/_index.dart';
import '../_models/_index.dart';

part 'a.movie.prov.dart';
part 'b.movie.serv.dart';
part 'c.movie.repo.dart';
part 'd.movie.repo.mock.dart';

MovieServ get _sv => Serv.movie;
MovieProv get _pv => Prov.movie.st;
MovieRepo get _rp => Repo.movie.st;
