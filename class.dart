enum Team { red, blue }

// 추상화 클래스로써 클래스의 청사진을 지정한다고 생각하면 편하다
abstract class Human {
  void walk();
}

class Player extends Human {
  /**
   * 클래스의 property는 타입을 지정하여 선언하고
   * 함수 내부의 변수는 var를 통해 선언한다.
   */
  late final String name;
  late int xp, age;
  late Team team;

  // 생성자를 설정하기 위해서는 클래스와 같은 이름의 함수를 사용한다.
  // Player(String name, int xp) {
  // 메서드 내부에 같은 name이라는 변수명(인자값)이 존재하기 때문에 this를 사용
  //   this.name = name;
  //   this.xp = xp;
  // }

  // 상단의 생성자 함수의 shortcut
  // Player(this.name, this.xp);

  // name constructor parameter 사용하는 버전
  Player(
      {required this.name,
      required this.xp,
      required this.age,
      required this.team});

  /**
   * named constructor 이며, 새로운 Player를 생성할 때 구성하는 데이터나 인자를 다르게 하고 싶을 경우 사용
   * : 세미콜론 뒤에서 초기화를 진행할 수 있음
   */
  Player.createdBlueTeam({required String name, required int age})
      : this.team = Team.blue,
        this.xp = 0,
        this.name = name,
        this.age = age;
  Player.createdRedTeam({required String name, required int age})
      : this.team = Team.red,
        this.xp = 0,
        this.name = name,
        this.age = age;

  void sayHello() {
    // dart의 클래스에서는 메서드 내부에 같은 변수명이 존재하지 않는 한 this를 사용하지 않아도 된다.
    print('hi $name, $xp, $age, $team');
  }

  void walk() {
    print('walk');
  }
}

void main() {
  var player = Player(name: "robin", age: 5, xp: 1500, team: Team.red);
  // final 설정을 해뒀기 때문에 에러를 발생시킨다.
  // player.name = "hi";
  player.sayHello();

  var bluePlayer = Player.createdBlueTeam(name: "robin", age: 5);

  print(bluePlayer.name);

  // ..을 통해 중복을 해소하고 간편한 문법으로 작성이 가능
  var newPlayer = Player(name: "robin", age: 5, xp: 1500, team: Team.red)
    ..age = 5
    ..name = "hi";

  // 인스턴스 생성 직후가 아니라도 가능한 문법
  var test = newPlayer
    ..age = 5
    ..name = 'hello'
    ..sayHello();
}
