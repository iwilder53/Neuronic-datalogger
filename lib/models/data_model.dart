class DeviceData {
  double temp = 0.0;
  double hum = 0.0;

  DeviceData({required this.temp, required this.hum});

  DeviceData.fromJson(Map<String, dynamic> json) {
    temp = json['result']['temp'];
    hum = json['result']['hum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['temp'] = temp;
    data['hum'] = hum;
    return data;
  }
}
