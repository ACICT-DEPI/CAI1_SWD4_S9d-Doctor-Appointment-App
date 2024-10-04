
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';

import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String _selectedPaymentMethod = 'card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Payment Method',
        onpressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Credit & Debit Card',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              PaymentOptionTile(
                title: 'Add New Card',
                icon: Icons.credit_card,
                value: 'card',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
                iconColor: _selectedPaymentMethod == 'card'
                    ? Colors.blue
                    : Colors.grey, // Color change when selected
              ),
              const SizedBox(height: 20),
              const Text(
                'More Payment Options',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              PaymentOptionTile(
                title: 'Paypal',
                icon: Icons.paypal,
                value: 'paypal',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
                iconColor: _selectedPaymentMethod == 'paypal'
                    ? Colors.blue
                    : Colors.grey,
              ),
              PaymentOptionTile(
                title: 'Apple Pay',
                icon: Icons.apple,
                value: 'apple_pay',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
                iconColor: _selectedPaymentMethod == 'apple_pay'
                    ? Colors.black
                    : Colors.black,
              ),
             const SizedBox(height: 100,),
              _selectedPaymentMethod == 'card'
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Card Number'),
                  const TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(hintText: '4716 9627 1635'),
                  ),
                  const SizedBox(height: 10),
                  const Text('Expiry Date'),
                  const TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(hintText: '02/30'),
                  ),
                  const SizedBox(height: 10),
                  CheckboxListTile(
                    title: const Text('Save Card'),
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentOptionTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;
  final Color iconColor; // New parameter for icon color

  const PaymentOptionTile({
    required this.title,
    required this.icon,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.iconColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Icon(icon, color: iconColor),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChanged(value);
            },
            child: Text(title, style: const TextStyle(fontSize: 16)),
          ),
        ),
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
