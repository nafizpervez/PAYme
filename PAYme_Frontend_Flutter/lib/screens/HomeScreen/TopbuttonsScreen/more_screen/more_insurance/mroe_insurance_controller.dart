import 'package:adn_pay/routes/app_pages.dart';

class InsuranceOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  InsuranceOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<InsuranceOptionItems> insuranceoptionitems = [
  InsuranceOptionItems(
    Routes.INSURANCEGUARDIANLIFEWEBVIEW,
    'https://guardianlife.com.bd/assets/img/logo.png',
    'Guardian Life Insurance Limited',
  ),
  InsuranceOptionItems(
    Routes.INSURANCEMILVIKBDWEBVIEW,
    'https://media-exp1.licdn.com/dms/image/C560BAQGE_TKXsmdmyw/company-logo_200_200/0/1627199544758?e=2159024400&v=beta&t=iZ1lOaBKJdf5P-Ihw_tHNvXMHoa3iIWXOsP9QAqtGAw',
    'Milvik Bangladesh Ltd.',
  ),
];
