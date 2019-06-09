class CarServices{

  final int carId;
   String carService;
   int carRate;

  CarServices({this.carId,this.carService,this.carRate});
  factory CarServices.fromJson(Map<String, dynamic> json) {
    return CarServices(
      carId: json['car_id'] as int,
      carService: json['car_service'] as String,
      carRate: json['car_rate'] as int,
    );
  }
}