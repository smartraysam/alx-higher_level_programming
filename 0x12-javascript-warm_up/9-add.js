#!/usr/bin/node
// A script that prints the addition of 2 integers

const num1 = process.argv[2];
const num2 = process.argv[3];
const a = parseInt(num1, 10);
const b = parseInt(num2, 10);

function add (a, b) {
  const sum = a + b;
  return (sum);
}

console.log(add(a, b));
