// 함수를 인자로 받는다
// 함수를 리턴하는 함수

function add(a, b) {
  return a + b;
}

function memoize(func) {
  const cache = {};
  return (a, b) => {
    const key = `${a.toString()}, ${b.toString()}`; // 입력값을 문자열로 변환하여 키로 사용
    if (key in cache) {
      return cache[key];
    } else {
      const result = func(a, b);
      cache[key] = result;
      return result;
    }
  };
}

const adder = memoize(add);

console.log(adder(1, 3)); // 4;
console.log(adder(2, 3)); // 4;
console.log(adder(2, 3)); // 4;
