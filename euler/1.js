let num = 10000000;

const result = [];

for (let i = 0; i < num; ++i) {
  if (i % 5 == 0 || i % 3 == 0) {
    result.push(i);
  }
}

console.log(result.reduce((a, f) => a + f));
