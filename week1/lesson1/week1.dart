void main() {
  // var --> can be changed later
  // const --> constant variable
  // final --> cannot be changed
  // late --> it will be set later

  /// VARIABLES ///

// String -> int
  var one = int.parse('1');
  print("${one} ${one.runtimeType}");

// String -> double
  var onePointOne = double.parse('1.1');
  print("${onePointOne} ${onePointOne.runtimeType}");

// int -> String
  String oneAsString = 1.toString();
  print("${oneAsString} ${oneAsString.runtimeType}");

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
  print("${piAsString} ${piAsString.runtimeType}");

// Strings can us double or single quote
  String str1 = "Double quote";
  String str2 = 'Single quote';

// Lists
  var list = [1, 2, 3, "hello"];
  print("lenght ${list.length}");
  print("lenght ${list[0]}");

  List<int> listInt = [1, 2, 3];
  List<int?> listIntNull = [1, 2, 3, null, 4];

  /// COLLECTION ///

// Set
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

// Maps
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

// Learn collections: https://dart.dev/language/collections

  /// Patterns ///

// if
  if (true) {
    print("true");
  }

// logical OR
  if (5 < 3 || 5 == 5) {
    print("true");
  } else {
    print("false");
  }

// logical AND
  if (5 < 3 || 5 == 5) {
    print("true");
  } else {
    print("false");
  }

// Relational expression
// ==, !=, <, >, <=, >=

// Null check
  String? maybeString = null;
  maybeString = 'nullable with base type String';

// Null-assert
  print(maybeString!);

  /// Functions ///

// functions has type too
  bool isTrue(int? number) {
    return number != null;
  }

// return type dynamic
  isFalse(int? number) {
    return number == null;
  }

// named parameters
  void myFunction({int? myNumber, bool? show}) {
    print("$myNumber $show");
  }

  myFunction(myNumber: null, show: false);

// required myNumber is required null or not
  void myFunction2({required int? myNumber, bool? show}) {
    print("$myNumber $show");
  }

  myFunction2(myNumber: 5, show: false);

  /// Async await ///
  lookUpVersion() {
    print("something");
  }

  var version;
  Future<void> checkVersion() async {
    var version = await lookUpVersion();
    // Do something with version
  }
}

/// Class ///

class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);
}

class Vector3d extends Vector2d {
  final double z;

  Vector3d(super.x, super.y, this.z);
}

// more about classes https://dart.dev/language/classes


