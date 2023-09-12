#!/usr/bin/node
// A script that computes and prints a factorial

const a = process.argv[2];
const num = parseInt(a, 10);
function factorial (num) {
  if (isNaN(num) || num === 0) {
    return (1);
  }
  return (num * factorial(num - 1));
}
console.log(factorial(num));
