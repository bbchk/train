/* 

? Problem:

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

*/

/*

? Solution: 

We need to find highest powers of all prime numbers from 1 to 20 and then multiply them


Algorithm in pseudo-code:

find out all the primes from 2 to limit -> primes
iterate on primes {

        exponentiate a prime until it is > limit        
        record number of times it has been exponentiated
        push that number to map with prime key
}

multiply exponentiated primes with each other -> result

*/

function isPrime(n) {
    
    for (let i = n - 1; i > 1; i--) {
        if(n % i === 0){
            return false
        }
    }

    return true;
}

const lim = 20

const primes = []
for (let i = 2; i <= lim; i++) {
    if(isPrime(i)) {
        primes.push(i)
    }
}

console.log(primes)


const factors = {}

for (const p of primes) {
    let n = 1;
    while(n < lim){
        n *= p
        if(n < lim)
            factors[p] = (factors[p] || 0) + 1;
    }
}

console.log(factors)

const product = Object.entries(factors).reduce((acc, [n2, exp2]) => {    
    return acc * Math.pow(n2, exp2);
}, 1);

console.log(product)

