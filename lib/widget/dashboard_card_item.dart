import 'package:flutter/material.dart';
import 'package:hubtel_test/config/color_pallette.dart';
import 'package:hubtel_test/widget/custom_text.dart';
import 'package:hubtel_test/widget/status_card.dart';

class DashboardCardItem extends StatelessWidget {
  const DashboardCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: ColorPallette().dashboardGray)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "14:45",
                  color: ColorPallette().dashboardGray,
                  fontSize: 12,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: ClipRect(
                        child:
                            Image.asset("assets/images/mtn_mobile_money.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: "Emmanuel Rockson Daniel Kabu Asare",
                              fontSize: 14,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CustomText(
                              text: "024 123 4567",
                              fontSize: 14,
                              color: ColorPallette().dashboardGray,
                            ),
                          ]),
                    ),
                    Column(
                      children: [
                        StatusCard(
                            cardColor: ColorPallette().cardStatusCardColorGreen,
                            text: 'Successful',
                            textColor: ColorPallette().cardStatusTextColorGreen,
                            iconWidget: Icon(Icons.check_circle,
                                color:
                                    ColorPallette().cardStatusTextColorGreen)),
                        const CustomText(
                          text: "GHS 500",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Divider(),
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 8,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const CustomText(
                      text: "Personal",
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const CircleAvatar(
                      radius: 2,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const CustomText(
                      text: "Cool your heart wai",
                      fontWeight: FontWeight.bold,
                    ),
                    const Spacer(),
                    Image.asset("assets/images/favourite.png")
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
