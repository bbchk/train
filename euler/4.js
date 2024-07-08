// A palindromic number reads the same both ways. The largest palindrome made from the product of two -digit numbers is 9009 = 91 X 99


// Find the largest palindrome made from the product of two 3-digit numbers.

//! firstly we need a way to check if number is palindrome

function isPalindrome(num) {
    const ns = num.toString().split("")
    const rns = [...ns].reverse();

    return ns.join("") === rns.join('');
}

const res = isPalindrome(900009)


// let 100 999
const palindromes = []

for (let i = 100; i <= 999; i++) {

    for (let j = i; j <= 999; j++) {
        let product = i * j;

        if (isPalindrome(product)) {
            palindromes.push(product)
        }

    }

}

console.log(Math.max(...palindromes))