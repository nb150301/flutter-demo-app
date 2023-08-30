import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  static const routeName = '/checkout';
  SuccessScreen({super.key});

  final Map<String, dynamic> data = {
    'name': 'John Doe',
    'phone': '0123456789',
    'email': 'anhnguyen@gmail',
    'address': '123, Nguyen Van Linh, Da Nang',
    'paymentMethod': 'Cash on delivery (COD)',
    'paymentStatus': 'Pending',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Successfully Purchased'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your order is successfully placed!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Thank you for purchasing our products!',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Image.network(
                  'https://images.moneycontrol.com/static-mcnews/2022/05/shutterstock_1923894104-770x433.jpg?impolicy=website&width=770&height=431'),
              const SizedBox(height: 20),
              const Text(
                'Customer information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Full name: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: data['name'],
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Phone: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: data['phone'],
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Email: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: data['email'],
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Address: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: data['address'],
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Payment method: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: data['paymentMethod'],
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Payment status: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: data['paymentStatus'],
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: FilledButton(
                  onPressed: () {},
                  child: Text('Continue shopping'),
                ),
              ),
            ],
          ),
        ));
  }
}
