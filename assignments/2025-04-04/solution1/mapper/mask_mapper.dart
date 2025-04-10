import 'package:intl/intl.dart';

import '../dto/mask_info_dto.dart';
import '../model/store.dart';

extension MaskMapper on MaskInfoDtoStores {
  Store toStore() {
    return Store(
      code: code ?? '',
      name: name ?? '',
      addr: addr ?? '',
      location: {'lat': lat ?? 0, 'lng': lng ?? 0},
      stockAt: DateFormat(
        'yyyy/MM/dd HH:mm:ss',
      ).parse(stockAt ?? '2020/07/03 10:45:00'),
      createdAt: DateFormat(
        'yyyy/MM/dd HH:mm:ss',
      ).parse(createdAt ?? '2020/07/03 10:45:00'),
    );
  }
}
