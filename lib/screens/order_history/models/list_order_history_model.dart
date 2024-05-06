import '../../../models/entities/index.dart' show Order, User;
import '../../../models/entities/paging_response.dart';
import '../../../models/paging_data_model.dart';

class ListOrderHistoryModel extends PagingDataModel<Order> {
  final User user;
  ListOrderHistoryModel({
    required this.user,
  });

  @override
  Future<PagingResponse<Order>> Function(dynamic cursor) get requestApi =>
      (cursor) => api.getMyOrders(
            user: user,
            cursor: cursor,
            orderStatus: orderStatus ?? '',
          );

  String? orderStatus;
  void setStatus(String newStatus) {
    orderStatus = newStatus;
    refresh();
  }
}
