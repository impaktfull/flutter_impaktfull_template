import 'package:impaktfull_cli/impaktfull_cli.dart';

class BuildConfig {
  // 1password Config
  static const onePasswordGlobalVaultName = '';

  static const opUuid1PasswordServiceAcocunt = '';

  static const opUuidPlaystoreCredentials = '';
  static const opUuidAppleAccount = '';

  static Future<Secret?> get1PasswordServiceAccount(ImpaktfullCli cli) {
    return cli.onePasswordPlugin.getPassword(
      vaultName: onePasswordGlobalVaultName,
      opUuid: opUuid1PasswordServiceAcocunt,
      fieldName: 'credential',
    );
  }

  // AppCenter Config
  static const appCenterOwnerName = 'Impaktfull';
  static const appCenterDistributionGroups = [
    AppCenterUploadConfig.defaultDistributionGroup,
  ];
}
