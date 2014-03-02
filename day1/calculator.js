function calculate() {
	var firstNumber = Number(document.getElementById("firstNumber").value);
	var secondNumber = Number(document.getElementById("secondNumber").value);
	var operator = document.getElementById("operator").value;
	var result;

	if (operator == '+') {
		result = firstNumber + secondNumber;
	} else if (operator =='-') {
		result = firstNumber - secondNumber;
	} else if (operator =='*') {
		result = firstNumber * secondNumber;
	} else if (operator =='/') {
		result = firstNumber / secondNumber;	
	}

	document.getElementById("result").innerHTML = result;
	return false;
}