import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/homepage_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ChangeNotifierProvider<HomepageProvider>(
          create: (context) => HomepageProvider(),
          child: Consumer<HomepageProvider>(
            builder: (context, provider, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(provider.eligibilityMessage.toString(),
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: provider.isEligible == true
                              ? Colors.green
                              : Colors.red)),
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (val) {
                      provider.checkEligibility(int.parse(val));
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
