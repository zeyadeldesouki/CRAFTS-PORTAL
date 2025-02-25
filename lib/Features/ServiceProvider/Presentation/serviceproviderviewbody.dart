// ignore_for_file: camel_case_types

import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Core/CustomButton.dart';
import 'package:craftsportal/Features/ChatView/presentation/ChatView.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/Listtileprovider.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/ReviewView.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/serviceinformation.dart';
import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:flutter/material.dart';

class serviceproviderviewbody extends StatelessWidget {
  const serviceproviderviewbody({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Listtileofserviceprovider(
              name: name,
            ),
            ServiceProviderinformation(width: width),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.25,
                right: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).MyServices,
                    style: AppStyles.text20(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: width * 0.02,
                  ),
                  Text(
                    S.of(context).Installingdrums,
                    style: AppStyles.text14(context),
                  ),
                  Text(
                    S.of(context).Maintenancepipes,
                    style: AppStyles.text14(context),
                  ),
                  Text(
                    S.of(context).Installingpumps,
                    style: AppStyles.text14(context),
                  ),
                  Text(
                    S.of(context).InstallingTaps,
                    style: AppStyles.text14(context),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.25,
                right: 8,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Reviewview();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).Reviews,
                      style: AppStyles.text20(context)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.double_arrow_sharp,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.25,
                right: 8,
              ),
              child: Row(
                children: [
                  CustomButton(
                    buttonModel: ButtonModel(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Chatview();
                          }));
                        },
                        title: S.of(context).Chat,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.05,
                  ),
                  CustomButton(
                    buttonModel:
                        ButtonModel(title: "01012345456", color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            Padding(
                padding: EdgeInsets.only(
                  left: width * 0.25,
                  right: 8,
                ),
                child: CustomButton(
                  buttonModel: ButtonModel(
                      minimumSize: Size(width * 0.8, 50),
                      title: S.of(context).Order,
                      color: Colors.grey),
                )),
          ],
        ),
      ),
    );
  }
}
