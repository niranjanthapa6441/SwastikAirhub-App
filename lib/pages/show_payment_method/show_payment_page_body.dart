import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:swastik_air_hub/utils/dimesions/dimesions.dart';
import 'package:swastik_air_hub/widgets/big_text.dart';

class ShowAvailablePaymentMethodsPageBody extends StatefulWidget {
  const ShowAvailablePaymentMethodsPageBody({Key? key}) : super(key: key);

  @override
  _ShowAvailablePaymentPageBodyState createState() =>
      _ShowAvailablePaymentPageBodyState();
}

class _ShowAvailablePaymentPageBodyState
    extends State<ShowAvailablePaymentMethodsPageBody> {
  TextEditingController amountController = TextEditingController();

  getAmt() {
    return int.parse(amountController.text) * 100; // Converting to paisa
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          const SizedBox(height: 15),
          // For Amount
          TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: "Enter Amount to pay",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                )),
          ),
          const SizedBox(
            height: 8,
          ),
          // For Button
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.red)),
              height: 50,
              color: const Color(0xFF56328c),
              child: const Text(
                'Pay With Khalti',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              onPressed: () {
                KhaltiScope.of(context).pay(
                  config: PaymentConfig(
                    amount: getAmt(),
                    productIdentity: 'dells-sssssg5-g5510-2021',
                    productName: 'Product Name',
                  ),
                  preferences: [
                    PaymentPreference.khalti,
                  ],
                  onSuccess: (su) {
                    const successsnackBar = SnackBar(
                      content: Text('Payment Successful'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(successsnackBar);
                  },
                  onFailure: (fa) {
                    const failedsnackBar = SnackBar(
                      content: Text('Payment Failed'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(failedsnackBar);
                  },
                  onCancel: () {
                    const cancelsnackBar = SnackBar(
                      content: Text('Payment Cancelled'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(cancelsnackBar);
                  },
                );
              }),
        ],
      ),
    );
  }
}
