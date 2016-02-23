package com.assessment;

//package com.assessment.java;

public class UserInfo {

	private Category variable_n;
	private double result;
	private Degree level_n;

	public enum Category {
		var_1, var_2, var_3, var_4, var_5
	}

	public enum Degree {
		high, medium, low;
	}

	public UserInfo(Category variable_n, Degree level_n) {
		this.variable_n = variable_n;
		this.level_n = level_n;

	}

	public Degree getLevel_n() {
		return level_n;
	}

	public void setLevel_n(Degree level_n) {
		this.level_n = level_n;
	}

	public Category getVariable_n() {
		return variable_n;
	}

	public void setVariable_n(Category variable_n) {
		this.variable_n = variable_n;

	}

	public double calculateResult() {
		if (level_n == Degree.high) {
			result = 100;
		} else if (level_n == Degree.medium) {
			result = 50;
		} else if (level_n == Degree.low) {
			result = 0;
		}
		return result;
	}

	public double getResult() {
		return result;
	}

}
