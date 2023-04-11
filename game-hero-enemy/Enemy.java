
/**
 * Application Purpose: Built the Enemy attributes to the game
 * Author: Eduardo Pio, Felipe, Maksim, Pedro, Roman
 * Date: April 10, 2023
 * Time: 05:30 PM
 */

 import java.util.Random;
 public class Enemy {
     // instance variables
     private int hp; // hp = health points
     private int defence;
     private int power;
     private String name;
 
     // Default constructor
     public Enemy() {
     }
 
     // default constructor and a parameterized constructor that takes four arguments
     public Enemy(int hp, int defence, int power, String name) {
         this.hp = hp;
         this.defence = defence;
         this.power = power;
         this.name = name;
     }
 
     // Getters and setters -> hp
     public int getHp() {
         return hp;
     }
 
     public void setHp(int hp) {
         this.hp = hp;
     }
 
     // Getters and setters -> defence
     public int getDefence() {
         return defence;
     }
 
     public void setDefence(int defence) {
         this.defence = defence;
     }
 
     // Getters and setters -> Power
     public int getPower() {
         return power;
     }
 
     public void setPower(int power) {
         this.power = power;
     }
 
     // Getters and setters -> Name
     public String getName() {
         return name;
     }
 
     public void setName(String name) {
         this.name = name;
 
     }
 
     // private method attack
     private int attack(Hero hero) {
         // Calculate the remaining HP of the Hero after attack
         int hpAfterAttack = hero.getHp() - power + hero.getDefence();
 
         // Check if the remaining HP after attack is less than 0. If it is less than 0, set it to 0 (prevent negative HP)
         if (hpAfterAttack < 0) {
             hpAfterAttack = 0;
         }
         // Update the Hero's HP to the remaining HP after attack
         hero.setHp(hpAfterAttack);
         return hpAfterAttack;
     }
 
     // public method isHit
     public int isHit(Hero hero) {
         // Create a Random object to generate a random integer
         Random rnd = new Random();
         int chance = rnd.nextInt(4); // (4 = 25% for each) between 0 and 3 (inclusive)
 
         // If the random integer is 0 or 1, return -1 (indicates a miss)
         if (chance == 0 || chance == 1){ // (50% of miss)
             return -1;
         }else {
             // If the random integer is not 0 or 1, Check if the Hero has a shield
             if(hero.getShield()){
                 System.out.printf("\t  ||Hero reflected attack of %6s||\n", name);
                 return -1;
             }
             // Generate another random integer between 0 and 1 (inclusive) // (50% of hit with Special Attack)
             int chanceOfSpecialAttack = rnd.nextInt(2);
 
             // If the random integer is 0, print a message indicating a special attack was used and call the specialAttack() method
             if(chanceOfSpecialAttack == 0){
                 System.out.printf("\t  ||%s used special attack     ||\n", name);
                 return specialAttack(hero); // call the specialAttack() method
             }
             // If the random integer is 1, call the attack() method
             return attack(hero);
         }
     }
 
     // private Special Attack class
     private int specialAttack(Hero hero) {
 
         // Calculate the remaining HP of the Hero after a special attack
         int hpAfterAttack = hero.getHp() + hero.getDefence() - power * 2 ;
 
         /// Check if the remaining HP after the special attack is less than 0. If it is less than 0, set it to 0 (prevent negative HP)
         if (hpAfterAttack < 0) {
             hpAfterAttack = 0;
         }
         // setting new hp to the hero
         hero.setHp(hpAfterAttack);
         // Return the remaining HP after the special attack
         return hpAfterAttack;
     }
 
 
 
 
 
 
 
     
     // this was an error, we forget to delete this method
     public void getDamage(int damage) {
         hp = damage - hp;
 
     }
 }
 