import 'package:impaktfull_cli/impaktfull_cli.dart';

import 'build_config.dart';

Future<void> main(List<String> arguments) => ImpaktfullCli().run(
      (cli) => cli.ciCdPlugin.buildIosWithFlavor(
        flavor: 'alpha',
        obfuscate: false,
        appCenterUploadConfig: const AppCenterUploadConfig(
          appName: 'Flutter-Template-iOS-Alpha',
          ownerName: BuildConfig.appCenterOwnerName,
          notifyListeners: false,
          distributionGroups: BuildConfig.appCenterDistributionGroups,
        ),
      ),
    );
