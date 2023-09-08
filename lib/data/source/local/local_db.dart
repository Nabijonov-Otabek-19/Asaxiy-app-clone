import 'package:asaxiy_clone/data/model_db/product_model_db.dart';
import 'package:hive/hive.dart';

import '../../../utils/constants.dart';

class DB {
   final box = Hive.box<ProductModelDB>(DBNAME);
}