enum CarType {saloon, suv, hatchback, fastback, coupe, universal}
enum CarClass {standard, business, premium}
enum CarColor {red, yellow, green, blue, black, white, grey}
enum CarTransmission {manual, automatic}
enum EVType {saloon, suv, coupe}
enum EVClass {standard, business, premium}
enum EVColor {red, yellow, green, blue, black, white, grey}


class CarFactory {
  static Car buildCar(CarClass carClass) {
    return Car(carClass);
  }
  
  static EV buildEV(EVClass evClass) {
    return EV(evClass);
  }
}

abstract class Car {
  factory Car(CarClass carClass) {
    switch(carClass) {
      case CarClass.standard: return StandardCar();
      case CarClass.business: return BusinessCar();
      case CarClass.premium: return PremiumCar();
    }
  }
}

class StandardCar implements Car {
  CarType type;
  CarClass carClass;
  CarColor color;
  CarTransmission transmission;
  int wheelsRadius;

  StandardCar({
    this.type = CarType.saloon,
    this.carClass = CarClass.standard,
    this.color = CarColor.white,
    this.transmission = CarTransmission.manual,
    this.wheelsRadius = 15
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nTransmission of model: $transmission\nRadius of wheels: $wheelsRadius inches\n';
  }
}

class BusinessCar implements Car {
  CarType type;
  CarClass carClass;
  CarColor color;
  CarTransmission transmission;
  int wheelsRadius;

  BusinessCar({
    this.type = CarType.suv,
    this.carClass = CarClass.business,
    this.color = CarColor.grey,
    this.transmission = CarTransmission.automatic,
    this.wheelsRadius = 18
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nTransmission of model: $transmission\nRadius of wheels: $wheelsRadius inches\n';
  }
}

class PremiumCar implements Car {
  CarType type;
  CarClass carClass;
  CarColor color;
  CarTransmission transmission;
  int wheelsRadius;

  PremiumCar({
    this.type = CarType.coupe,
    this.carClass = CarClass.premium,
    this.color = CarColor.black,
    this.transmission = CarTransmission.automatic,
    this.wheelsRadius = 21
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nTransmission of model: $transmission\nRadius of wheels: $wheelsRadius inches\n';
  }
}

abstract class EV {
  factory EV(EVClass carClass) {
    switch(carClass) {
      case EVClass.standard: return StandardEV();
      case EVClass.business: return BusinessEV();
      case EVClass.premium: return PremiumEV();
    }
  }
}

class StandardEV implements EV {
  EVType type;
  EVClass carClass;
  EVColor color;
  int wheelsRadius;

  StandardEV({
    this.type = EVType.saloon,
    this.carClass = EVClass.standard,
    this.color = EVColor.white,
    this.wheelsRadius = 15
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nRadius of wheels: $wheelsRadius inches\n';
  }
}

class BusinessEV implements EV {
  EVType type;
  EVClass carClass;
  EVColor color;
  int wheelsRadius;

  BusinessEV({
    this.type = EVType.suv,
    this.carClass = EVClass.business,
    this.color = EVColor.grey,
    this.wheelsRadius = 18
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nRadius of wheels: $wheelsRadius inches\n';
  }
}

class PremiumEV implements EV {
  EVType type;
  EVClass carClass;
  EVColor color;
  int wheelsRadius;

  PremiumEV({
    this.type = EVType.coupe,
    this.carClass = EVClass.premium,
    this.color = EVColor.black,
    this.wheelsRadius = 21
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nRadius of wheels: $wheelsRadius inches\n';
  }
}