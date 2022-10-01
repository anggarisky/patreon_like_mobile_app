import 'package:flutter/material.dart';
import 'package:patreon_like_mobile_app/styles/button.dart';
import 'package:patreon_like_mobile_app/styles/color.dart';
import 'package:patreon_like_mobile_app/styles/typo.dart';

class SubscribeCreator extends StatefulWidget {
  @override
  State<SubscribeCreator> createState() => _SubscribeCreatorState();
}

class _SubscribeCreatorState extends State<SubscribeCreator> {
  var selectedPayment = "VISA";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset('assets/content.png', height: 100),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Umma\nProgrammer',
                          style: header,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '18,309 backer',
                          style: small,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      '\$290,000',
                      style: price,
                    ),
                    SizedBox(width: 6),
                    Text(
                      '/month',
                      style: small,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: subheader,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Umma will use the money to upgrading her kit so that she is able to product more content about web and mobile app design.',
                      style: p,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Method',
                      style: subheader,
                    ),
                    SizedBox(height: 12),
                    _selectPayment('VISA', 'assets/visa.png'),
                    SizedBox(height: 16),
                    _selectPayment('Master Card', 'assets/mc.png'),
                    SizedBox(height: 16),
                    _selectPayment('Angga Pay', 'assets/bwa.png'),
                  ],
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {},
                  child: Text(
                    'Support Now',
                    style: labelPrimary,
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Terms & Conditions',
                    style: labelSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _selectPayment(String title, String image) {
    return InkWell(
      onTap: () {
        selectPayment(title);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: title == selectedPayment ? white : Colors.transparent,
          border: title == selectedPayment
              ? Border.all(width: 1, color: Colors.transparent)
              : Border.all(width: 1, color: grey),
        ),
        child: Container(
          width: double.infinity,
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text(
                  title,
                  style: title == selectedPayment ? paymentSelected : payment,
                ),
                Spacer(),
                Image.asset(image, height: 23),
              ],
            ),
          ),
        ),
      ),
    );
  }

  selectPayment(title) {
    setState(() {
      selectedPayment = title;
    });
  }
}
