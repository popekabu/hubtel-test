import 'package:flutter/material.dart';
import 'package:hubtel_test/config/color_pallette.dart';
import 'package:hubtel_test/widget/custom_bottom_navigation.dart';
import 'package:hubtel_test/widget/custom_search_text_field.dart';
import 'package:hubtel_test/widget/dashboard_card_item.dart';
import 'package:hubtel_test/widget/status_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: CustomSearchTextField()),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.filter_list_alt, size: 32)
                  ],
                ),
              ),
              Row(
                children: [
                  StatusCard(
                    cardColor: ColorPallette().lightGray,
                    text: "May 24,2022",
                    textColor: ColorPallette().dashboardGray,
                  ),
                  const Spacer()
                ],
              ),
              const DashboardCardItem(),
              const DashboardCardItem(),
              const DashboardCardItem(),
              Row(
                children: [
                  StatusCard(
                      cardColor: ColorPallette().lightGray,
                      text: "May 23,2022",
                      textColor: ColorPallette().dashboardGray),
                ],
              ),
              const DashboardCardItem(),
              const DashboardCardItem(),
              const DashboardCardItem(),
              Row(
                children: [
                  StatusCard(
                      cardColor: ColorPallette().lightGray,
                      text: "May 22,2022",
                      textColor: ColorPallette().dashboardGray),
                ],
              ),
              const DashboardCardItem(),
              const DashboardCardItem(),
              const DashboardCardItem(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}
