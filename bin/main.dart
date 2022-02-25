import 'package:abstract_factory_method/car.dart';

void main(List<String> arguments) {
  Car standardCar = CarFactory.buildCar(CarClass.standard);
  EV standardEV = CarFactory.buildEV(EVClass.standard);
  Car businessCar = CarFactory.buildCar(CarClass.business);
  EV businessEV = CarFactory.buildEV(EVClass.business);
  Car premiumCar = CarFactory.buildCar(CarClass.premium);
  EV premiumEV = CarFactory.buildEV(EVClass.premium);

  print(
    '$standardCar\n'
    +'---'*20+
    '\n$standardEV\n'
    +'---'*20+
    '\n$businessCar\n'
    +'---'*20+
    '\n$businessEV\n'
    +'---'*20+
    '\n$premiumCar\n'
    +'---'*20+
    '\n$premiumEV\n'
  );
}
