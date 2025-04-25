void main() async {
  print("Hello, Dart");

  // String name = 'Andi';
  // int number100 = 100;
  // double discount = 10.3;
  // bool active = true;
  var number = 60;
  number = 40;

  final number2 = 50;
  const number3 = 3;

  final result = number + number2;
  number += 30;

  print("Number1: $number");
  print("Number2: $number2");
  print("Number3: $number3");
  print("Result: $result");

  final age = 18;
  if(age >= 40) {
    print("Orang tua");
  } else if(age >= 18) {
    print("Orang dewasa");
  } else if(age >= 10) {
    print("Remaja");
  } else {
    print("Anak-anak");
  }

  final day = 5;
  switch (day) {
    case 1:
      print("Senin");
      break;
    case 2:
      print("Selasa");
      break;
    case 3:
      print("Rabu");
      break;
    case 4:
      print("Kamis");
      break;
    case 5:
      print("Jumat");
      break;
    case 6:
      print("Sabtu");
      break;
    case 7:
      print("Minggu");
      break;
    default:
  }

  for (var i = 0; i < 50; i++) {
    if(i == 20) {
      continue;
    }
    if(i == 25) {
      break;
    }
    if(i%2 == 0) {
      print("Index: $i");
    }
  }

  var i = 20;
  while (i < 10) {
    print("While index: $i");
    i++;
  }

  var b = 20;
  do {
    print("Do While index: $b");
    b++;
  } while (b < 10);

  hello("Thom", 17);
  hello("Andi", 20);
  hello2(
    age: 17,
    name: "Thom",
  );
  hello2(
    name: "Andi", 
  );
  hello2(
    age: 30,
    name: "Leo", 
  );

  fetchData();

  final sisi = 4;
  final luas = luasPersegi(sisi);
  print("Luas Persegi = $sisi x $sisi = $luas");

}

Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 2), () {
    print("Data fetched");
  });
}

// Positional Parameter
void hello(String name, int age) {
  print("Hello, $name ($age) di kelas Flutter Nusacodes");
}

// Named Parameter
void hello2({
  required String name, 
  int? age,
}) {
  print("Hello, $name (${age ?? 0}) di kelas Flutter Nusacodes");
}

int luasPersegi(int sisi) {
  return sisi*sisi;
}