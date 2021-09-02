enum Flavor {
  DEV,
  QA,
  HOM,
  PROD,
}

Flavor? appFlavor;

extension FlavorExt on Flavor {
  static Flavor? appFlavor;

  bool get isDev => this == Flavor.DEV;
  bool get isQA => this == Flavor.QA;
  bool get isHom => this == Flavor.HOM;
  bool get isProd => this == Flavor.PROD;

  String get title {
    switch (this) {
      case Flavor.QA:
        return 'My Todo List QA';
      case Flavor.HOM:
        return 'My Todo List HOM';
      case Flavor.PROD:
        return 'My Todo List';
      case Flavor.DEV:
      default:
        return 'My Todo List DEV';
    }
  }
}
