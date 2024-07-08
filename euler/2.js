// // // 4194302
// let ceil = 4_000_000;

// let sum = 0;
// const result = [];
// for (let curr = 1, prev = 0; curr < ceil; ) {
//   if (curr % 2 === 0) {
//     result.push(curr);
//     sum += curr;
//   }

//   console.log(`curr: ${curr}, prev: ${prev}`);
//   prev = curr;
//   curr += prev;
// }

// console.log(sum);
// console.log(result);

// 4613732
// let limit = 4_000_000;
// let sum = 0;
// for (let curr = 1, prev = 0; curr < limit; ) {
//   if (curr % 2 === 0) {
//     sum += curr;
//   }
//   console.log(`curr: ${curr}, prev: ${prev}`);
//   [prev, curr] = [curr, prev + curr];
// }

// console.log(sum);

let ceil = 4_000_000;

let sum = 0;
let prev = 0;
let curr = 1;

while (curr < ceil) {
  if (curr % 2 === 0) {
    sum += curr;
  }

  // Update Fibonacci sequence variables
  let next = prev + curr;
  prev = curr;
  curr = next;
}

console.log(sum); // Output the sum of even Fibonacci numbers up to 4,000,000
