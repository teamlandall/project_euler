// Problem 6 - Project Euler

// The sum of the squares of the first ten natural numbers is,
// 12 + 22 + ... + 102 = 385

// The square of the sum of the first ten natural numbers is,
// (1 + 2 + ... + 10)2 = 552 = 3025

// Hence the difference between the sum of the squares of the first ten natural numbers 
// and the square of the sum is 3025 − 385 = 2640.

// Find the difference between the sum of the squares of the first one hundred natural numbers 
// and the square of the sum.

function sumOfSquares(){
	var sum = 0;
	for (i=0;i<=100;i++){
		sum += Math.pow(i,2);
	}
	return sum;
}

function squareSums(){
	var square_of = 0;
	for (i=0;i<=100;i++){
		square_of += i;
	}
	square_of = Math.pow(squar_of, 2);
	return square_of;
}

function difference(){
	result = squareSums() - sumOfSquares();
	console.log(result);
}

difference();

// > 25164150