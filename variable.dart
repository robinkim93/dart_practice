// dart 언어의 시작점은 main 함수로 시작되어야 함 (정해져있음)
void main() {
  /**
   * 변수 선언의 방법은 2가지가 있음
   * var로 선언은 주로 함수나 블록 내부에서 선언
   * 타입으로 선언은 클래스의 멤버변수를 선언할 때 쓰임
   * 무조건 지켜야하는 것은 아니지만 dart의 코드 작성 스타일임
   */

  // var로 선언 (타입을 dart가 추론)
  var name = "robin";

  // 타입으로 선언
  String myName = "robin";

  // 타입 에러 발생
  String myName2 = 1;

  // 변수의 타입을 알지 못할 경우 dynamic으로 선언 가능 (타입을 dart가 추론)
  dynamic yourName = "siri";

  if (yourName is String) {
    // 해당 블록 내부에서 string으로 사용 가능
  }

/**
 * dart는 기본적으로 null safety이다. null을 참조할 수 없도록 컴파일 단계에서 알려준다.
 * 하지만, null값을 사용해야하는 경우가 있는데 이 때는 타입 뒤에 물음표를 붙혀줄 수 있고
 * 어떤 연산을 할 때도 물음표를 사용해 접근할 수 있다.
 */

  // 타입 에러 발생
  String hi = "hi";
  hi = null;

  String? hi2 = "hi";
  hi2 = null;

  // nullable 하기 때문에 null일 경우에는 length에 접근할 수 없음
  hi2.length;

  hi2?.length;

  // final로 선언한 변수는 변경할 수 없다. javascript의 const와 같은 역할
  final bye = "bye";

  // 에러 발생
  bye = 'hi';

  /**
   * late 키워드는 값을 초기화하지 않은 상태에서 변수를 선언할 수 있게 해준다.
   * APi를 호출하고 얻은 데이터를 할당할 때 유용하게 사용할 수 있다.
   * 또한, late 키워드로 선언한 변수 내부에 어떤 값을 할당하지 않으면 접근할 수 없도록 알려준다.
   */

  late final data;

  // 접근 에러
  print(data);

  data = "hi";

  // 에러가 발생하지 않음
  print(data);

  /**
   * final과 마찬가지로 const를 사용할 수 있는데, const는 컴파일 단계에서 이미 값을 알고 있는 경우에 사용한다.
   * final은 런타임에서 알 수 있는 값일 수 있을 때 사용한다. ex) 사용자가 입력한 데이터, api 호출 데이터 등
   * API KEY나 페이지에서 보여지는 게시물의 갯수를 정하거나 하는 값이 지정된 데이터를 선언할 때 사용한다.
   */

  const API_KEY = 'hi';
  const max_post_count = 10;
}
