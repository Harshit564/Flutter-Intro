import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smileattachface/app.dart';
import 'package:smileattachface/core/presentation/res/app_config.dart';
import 'package:smileattachface/core/presentation/res/constants.dart';


void main() {
    runApp(
      Provider<AppConfig>(
        child: App(),
        create: (context) =>  AppConfig(
          appTitle: AppConstants.appName,
          buildFlavor: AppFlavor.prod,
        ),
      ),
    );
}