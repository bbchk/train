
const start = 1;
const end = 100;

const arr = Array.from({ length: end - start + 1 }, (_, i) => start + i);
console.log(arr)

const sumOfSquares = arr.reduce((acc,a) => acc + Math.pow(a, 2), 0)
console.log(sumOfSquares)

const squareOfSum = Math.pow(arr.reduce((a,b) => a + b), 2)
console.log(squareOfSum)

console.log(Math.abs(sumOfSquares - squareOfSum))