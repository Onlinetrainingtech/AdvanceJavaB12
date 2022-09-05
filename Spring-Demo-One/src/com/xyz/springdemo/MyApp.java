package com.xyz.springdemo;

public class MyApp {

	public static void main(String[] args) {
		
		
		//creating the object
		
		BaseballCoach b1=new BaseballCoach();
		
		System.out.println(b1.getDailyWorkout());
		
		TrackerCoach b2=new TrackerCoach();
		
		System.out.println(b2.getDailWorkoutTrack());
	}

}
