package util;

import java.util.LinkedList;
import java.util.Queue;

public class CalcRecorder {
	Queue<Character> operations = new LinkedList<>();
	Queue<Integer> numbers = new LinkedList<>();
	
	public CalcRecorder() {}
	
	public void addOperation(char op) {
		operations.add(op);
	}
	
	public void addNumber(int num) {
		numbers.add(num);
	}
	
	public boolean isEquation() {
		if (operations.size() >= numbers.size()) {
			return false;
		}
		
		return true;
	}
}
