
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smileattachface/app.dart';
import 'package:smileattachface/core/presentation/res/app_config.dart';
import 'package:smileattachface/core/presentation/res/constants.dart';

void main() {
    runApp(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Banner(
          location: BannerLocation.topEnd,
          message: "dev",
          textDirection: TextDirection.ltr,
          child: Provider<AppConfig>(
            create: (context) => AppConfig(
              appTitle: AppConstants.appNameDev,
              buildFlavor: AppFlavor.dev,
            ),
            child: App(),
          ),
        ),
      ),
    );
}