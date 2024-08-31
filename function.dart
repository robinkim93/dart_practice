// return하는 타입을 명시한다.
String sayHello(String name) {
  return "hi $name";
}

// fat arrow 문법을 통해 바로 return 할 수 있음
String sayHelloFatArrow(String name) => "hi $name";

String sayHi(String name, num age, String country) =>
    "hi $name, $age, $country";

// null일 수 있기 때문에 에러가 발생
// 이 경우에는 default value를 지정해서 막을 수 있음
String sayHiNamedParameter(
        {String name = "noname", num age = 0, String country = "noCountry"}) =>
    "hi $name, $age, $country";

// default value를 지정하지 않을 거라면 필수로 넣어야 한다는 표시로 required 키워드를 작성
String sayHiNamedParameterRequired(
        {required String name, required num age, required String country}) =>
    "hi $name, $age, $country";

void main() {
  // void는 함수가 아무것도 return하지 않는 경우에 사용

  print(sayHelloFatArrow("robin"));

  // 순서를 모두 기억해야하고, 각 parameter가 어떤 데이터인지 알 수 없음
  sayHi("robin", 31, "korea");

  sayHiNamedParameter(name: "robin", age: 31);

  sayHiNamedParameterRequired(name: "robin", age: 31, country: "korea");
}
