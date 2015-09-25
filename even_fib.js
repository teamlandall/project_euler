//problem 2

//Fibonacci sequence whose values do not exceed four million, 
//find the sum of the even-valued terms.

var fibArray = [];
var evenFibArray = [];

var sum = 0;
var i = 0;
var j = 1; 
var k = 0;

function makeFibArray(){
	while (k < 4000000){
		k = i + j; 
		i = j; 
		j = k;
	fibArray.push(k);
	}
	return fibArray;
}

function keepEven(){
	for(i=0; i<fibArray.length; i++){
		if (fibArray[i] % 2 === 0){
			evenFibArray.push(fibArray[i]);
		}
	}
	return evenFibArray;
}

function addEvens(){
	for(i=0; i<evenFibArray.length; i++){
		sum += evenFibArray[i];
	}
	return sum;
}

// sum => 4,613,732

makeFibArray();
keepEven();
addEvens();



