void main() {
  /**
   * dart의 자료형은 모두 object이다. class로 생성되었기 때문에 자료형에 맞는 메서드에 접근할 수 있다.
   */
  String a = "a";
  bool b = false;
  int c = 1;
  double d = 1.1;

  bool isAdd = true;

  /**
   * list는 대괄호를 사용해서 선언할 수 있고, list 내부의 값으로 Dart가 타입을 추론한다.
   * if를 사용해서 collection에 값을 조작할 수 있음
   */
  var numberList = [1, 2, 3, 4, if (isAdd) 5];

  // 상단의 collection if와 같은 코드
  if (isAdd) {
    numberList.add(5);
  }

  /**
   * string interpolation은 문자열에 변수나 연산을 할 수 있도록 해주는 문법
   */

  var name = 'robin';
  var age = 10;
  var greeting = "my name is $name and ${age + 2} years old";

  print(greeting);

  /**
   * collection for는 list 내부에서 for문을 사용할 수 있도록 해준다.
   */
  var nameList = ["sam", "robin", "steve"];
  var newNameList = ["serena", for (var name in nameList) "welcome $name"];

  // 위의 collection for와 같은 코드
  for (var name in nameList) {
    newNameList.add(name);
  }

  print(newNameList);

  /**
   * Map은 javascript의 object와 같은 역할을 한다.
   */

  var player = {
    "name": "robin",
    "age": 31,
    "superpower": false,
  };

  List<Map<String, Object>> players = [
    {"name": "robin"}
  ];

  /**
   * Set은 모든 값이 유니크 해야 할 경우 list 대용으로 사용
   */

  var setTest = {1, 2, 3, 4};
  setTest.add(1);
  setTest.add(1);
  setTest.add(1);

  // 1을 계속 추가해도 Set의 요소는 유니크하기 때문에 추가되지 않음
  print(setTest);
}
