
/**
 * Application Purpose: Create potions class to boost character stats during battles
 * Author: Eduardo Pio, Felipe, Maksim, Pedro, Roman
 * Date: Apr 05, 2023
 * Time: 07:05 pm
 */

 import java.util.Random;


 public class Potions {
     //Instance variables to store data
     private String name;
     private int effectValue;
     private int price;
     // constructor to initialize the instance variables with values passed in as parameters
     public Potions(String name, int effectValue, int price) {
         this.name = name;
         this.effectValue = effectValue;
         this.price = price;
     }
     // getter methods to return values
     public int getPrice() {
         return price;
     }
     // setter methods to set values
     public void setPrice(int price) {
         this.price = price;
     }
 
     public String getName() {
         return name;
     }
 
     public int getEffectValue() {
         return effectValue;
     }
 
     public void setName(String name) {
         this.name = name;
     }
 
     public void setEffectValue(int effectValue) {
         this.effectValue = effectValue;
     }
     // static method to generate an array of 3 random potions
     public static Potions[] generatePotions() {
 
         Potions[] potions = new Potions[3];// initialize array of 3 potions
 
         Random rnd = new Random();// initialize a Random object to generate random numbers
         // arrays to store possible potion names, effect values, and price values
         String[] potionNames = { "Attack", "Defense", "Health" };
         int[] effectValues = { 50, 70, 100 };
         int[] priceValues = { 150, 100, 200 };
         // For statement to create 3 new potion objects with random names, effect values, and prices
         for (int i = 0; i < potions.length; i++) {
             // use the Random object to generate a random index for each array
             // use the index to select a random name, effect value, and price from the arrays
             // use the selected values to create a new Potion object and add it to the potions array
 
             // generating random potions and adding them to the array Potions[].
             potions[i] = new Potions(potionNames[rnd.nextInt(3)], effectValues[rnd.nextInt(3)], priceValues[rnd.nextInt(3)]);
         }
 
         return potions; // return the array of 3 random potions
     }
 }