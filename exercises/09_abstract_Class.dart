void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  print('Wind: ${chargePhone(windPlant)}');

  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('Nuclear: ${chargePhone(nuclearPlant)}');

  final waterPlant = NuclearPlant(energyLeft: 5000);
  print('Water: ${chargePhone(waterPlant)}');
}

enum PlantType { nuclear, wind, water }

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('No queda energia en la planta');
  return plant.energyLeft - 10;
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

class WaterPlant extends EnergyPlant {
  WaterPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.water);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.05);
  }
}