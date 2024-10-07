//  Function that calculates the total price of items for a certain user
import '4-util.dart';
import 'dart:convert';

Future<dynamic> calculateTotal() async {
  try {
    double totalPrice = 0.0;

    String data = await fetchUserData();
    String id = json.decode(data)['id'];

    String orderData = await fetchUserOrders(id);
    List order = json.decode(orderData);

    for (var product in order) {
      String priceData = await fetchProductPrice(product);
      totalPrice += json.decode(priceData);
    }
    return (totalPrice);
  } catch (error) {
    return (-1);
  }
}