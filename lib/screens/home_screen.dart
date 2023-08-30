import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final countryController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();
  final orderNoteController = TextEditingController();

  List<String> dummyCountry = [
    'Select your country',
    'Thailand',
    'VietNam',
    'China',
    'Japan',
  ];

  List dummyShippingMethod = [
    {
      'label': 'FreeShipping',
      'value': 'free',
    },
    {
      'label': 'QuickShipping',
      'value': 'quick',
    },
  ];

  List dummyPaymentMethod = [
    {
      'label': 'Cash on delivery (COD)',
      'value': 'cod',
    },
    {
      'label': 'Bank transfer',
      'value': 'bank',
    },
  ];

  String selectedCountry = 'Select your country';
  String selectedShippingMethod = '';
  String selectedPaymentMethod = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Checkout'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Full name';
                      }
                      return null;
                    },
                    controller: fullNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Full name',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email address';
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email address',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Phone number';
                      }
                      return null;
                    },
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone number',
                    ),
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value == 'Select your country') {
                        return 'Please select your country';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    value: selectedCountry,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountry = newValue!;
                      });
                    },
                    items: dummyCountry
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter State';
                      }
                      return null;
                    },
                    controller: stateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'State/Province/Region',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter City';
                      }
                      return null;
                    },
                    controller: cityController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'City/Town',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Address';
                      }
                      return null;
                    },
                    controller: addressController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Address',
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping method',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  for (var item in dummyShippingMethod)
                    RadioListTile<String>(
                      title: Text(item['label']!),
                      value: item['value']!,
                      groupValue: selectedShippingMethod,
                      onChanged: (String? value) {
                        setState(() {
                          selectedShippingMethod = value!;
                        });
                      },
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping payment',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (var item in dummyPaymentMethod)
                    RadioListTile<String>(
                      title: Text(item['label']!),
                      value: item['value']!,
                      groupValue: selectedPaymentMethod,
                      onChanged: (String? value) {
                        setState(() {
                          selectedPaymentMethod = value!;
                        });
                      },
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order note',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 8,
                    controller: orderNoteController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Address',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: SizedBox(
                height: 50,
                child: FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: Text('Checkout'),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}