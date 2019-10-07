package com.OMO.JavaBeans;

import java.util.ArrayList;

public class ShoppingCart {
	

	private ArrayList<Meals> meals;

	public ShoppingCart(){
	    meals = new ArrayList<Meals>();
	}

	public void ins(Meals m){
	    meals.add(m);
	}

	public void remove(Meals m){
	    meals.remove(m);
	}

	public int getSize(){
	    return meals.size();
	}

	public ArrayList<Meals> getIt(){
		return meals;
	}
}
