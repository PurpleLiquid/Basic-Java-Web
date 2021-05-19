package logic;

public class Calculator {
	public Calculator() {}
	
	public int add(int first, int second) {
		return (first + second);
	}
	
	public int subtract(int first, int second) {
		return (first - second);
	}
	
	public int multiply(int first, int second) {
		return (first * second);
	}
	
	public int divide(int first, int second) {
		return (first / second);
	}
	
	public int calculate(int first, int second, char op) {
		int result = 0;
		
		switch(op) {
		case '+':
			result = add(first, second);
			break;
		case '-':
			result = subtract(first, second);
			break;
		case '*':
			result = multiply(first, second);
			break;
		case '/':
			result = divide(first, second);
			break;
		default:
			break;
		}
		
		return result;
	}
}
