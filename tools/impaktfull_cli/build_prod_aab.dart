import 'package:impaktfull_cli/impaktfull_cli.dart';

import 'build_config.dart';

Future<void> main(List<String> arguments) => ImpaktfullCli().run(
      (cli) async => cli.ciCdPlugin.buildAndroidWithFlavor(
        flavor: 'prod',
        obfuscate: false,
        extension: FlutterBuildAndroidExtension.aab,
        playStoreUploadConfig: PlayStoreUploadConfig(
          serviceAccountCredentialsFile: await cli.onePasswordPlugin.downloadServiceAccountCredentials(
            rawServiceAccount: await BuildConfig.get1PasswordServiceAccount(cli),
            opUuid: BuildConfig.opUuidPlaystoreCredentials,
          ),
        ),
      ),
    );
