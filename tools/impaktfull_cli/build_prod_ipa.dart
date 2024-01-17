import 'package:impaktfull_cli/impaktfull_cli.dart';

import 'build_config.dart';


Future<void> main(List<String> arguments) async => ImpaktfullCli().run(
      (cli) async => cli.ciCdPlugin.buildIosWithFlavor(
        flavor: 'prod',
        obfuscate: false,
        testflightUploadConfig: TestFlightUploadConfig(
          credentials: await cli.onePasswordPlugin.getTestFlightCredentials(
            vaultName: BuildConfig.onePasswordGlobalVaultName,
            opUuid: BuildConfig.opUuidAppleAccount,
          ),
        ),
      ),
    );
