// Calculate BMI
double calculatorBMI(double berat, double tinggi) {
  var bmi = berat / (tinggi * tinggi);
  return double.parse(bmi.toStringAsFixed(2));
}

void main() {
  // Data 1
  double beratMark1 = 78; // kg
  double tinggiMark1 = 1.69; // m

  double beratJohn1 = 92; // kg
  double tinggiJohn1 = 1.95; // m

  // Menghitung BMI untuk Mark dan John (Data 1)
  double bmiMark1 = calculatorBMI(beratMark1, tinggiMark1);
  double bmiJohn1 = calculatorBMI(beratJohn1, tinggiJohn1);

  // Menentukan apakah Mark memiliki BMI lebih tinggi dari John (Data 1)
  bool markHigherBMI1 = bmiMark1 > bmiJohn1;

  // Menampilkan hasil (Data 1)
  print("Data 1:");
  print("BMI Mark: $bmiMark1");
  print("BMI John: $bmiJohn1");
  print("Mark memiliki BMI lebih tinggi dari John: $markHigherBMI1");

  // Data 2
  double beratMark2 = 95; // kg
  double tinggiMark2 = 1.88; // m

  double beratJohn2 = 85; // kg
  double tinggiJohn2 = 1.76; // m

  // Menghitung BMI untuk Mark dan John (Data 2)
  double bmiMark2 = calculatorBMI(beratMark2, tinggiMark2);
  double bmiJohn2 = calculatorBMI(beratJohn2, tinggiJohn2);

  // Menentukan apakah Mark memiliki BMI lebih tinggi dari John (Data 2)
  bool markHigherBMI2 = bmiMark2 > bmiJohn2;

  // Menampilkan hasil (Data 2)
  print("\nData 2:");
  print("BMI Mark: $bmiMark2");
  print("BMI John: $bmiJohn2");
  print("Mark memiliki BMI lebih tinggi dari John: $markHigherBMI2");
}
