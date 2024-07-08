

const factors = []
let num = 600851475143

let i = 2

while (num > 1) {
  if (num % i === 0) {
    factors.push(i)
    num = num / i
  } else {
    ++i
  }
}

console.log(Math.max(...factors))
