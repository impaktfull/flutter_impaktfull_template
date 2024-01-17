import 'package:impaktfull_cli/impaktfull_cli.dart';

import 'build_config.dart';

Future<void> main(List<String> arguments) => ImpaktfullCli().run(
      (cli) => cli.ciCdPlugin.buildAndroidWithFlavor(
        flavor: 'alpha',
        obfuscate: false,
        extension: FlutterBuildAndroidExtension.apk,
        appCenterUploadConfig: const AppCenterUploadConfig(
          appName: 'Flutter-Template-Android-Alpha',
          ownerName: BuildConfig.appCenterOwnerName,
          notifyListeners: false,
          distributionGroups: BuildConfig.appCenterDistributionGroups,
        ),
      ),
    );
