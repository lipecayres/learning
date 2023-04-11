
/**
 * Application Purpose: Game statements
 * Author: Eduardo Pio, Felipe, Maksim, Pedro, Roman
 * Date: Apr 10th, 2023
 * Time: 5:30 PM
 */

 import java.util.Random;
 import java.util.Scanner;
 
 public class Game {
     public static void startGame(Hero hero, Enemy enemy){
 
         System.out.println("\t\t+==================WELCOME=TO==================+");
 
         System.out.println("""
                 \t\t __    __     _______     _______     ________
                 \t\t|  |  |  |   |  _____|   |  |--  \\   |   ___   |
                 \t\t|   --   |   |  |____    |  |__|  |  |  |   |  |
                 \t\t|   __   |   |  _____|   |  | \\  \\   |  |   |  |
                 \t\t|  |  |  |   |  |____    |  |  |  |  |   ---   |
                 \t\t --    --     -------|    --    --    ---------""");
         System.out.print("""
                 \t\t\t\t  \\---\\     /---/
                 \t\t\t\t   \\   \\   /   /
                 \t\t\t\t    \\   \\ /   /
                 \t\t\t\t    /   / \\   \\
                 \t\t\t\t   /   /   \\   \\
                 \t\t\t\t  /___/     \\___\\
                 """);
         System.out.println("""
                  ______        _______         ____        _________     ________      ____    __
                 |   ___  \\    |  |--  \\       /    \\      |  ____   |   |   ___   |   |    \\  |  |
                 |  |   \\  |   |  |__|  |     /  __  \\     |  |   |__|   |  |   |  |   |  |\\ \\ |  |
                 |  |   |  |   |  | \\  \\     /  /__\\  \\    |  |   ___    |  |   |  |   |  | \\ \\|  |
                 |  |__ /  /   |  |  |  |   /   /  \\   \\   |   ---|  |   |   ---   |   |  |  \\ |  |
                  --------      --    --   /___/    \\___\\   \\--------/    ---------     --     ----
                 """);
         System.out.printf("""
                         +================Statistics==================+
                         | Hero's HP is -> %27s|
                         | Enemy's HP is -> %26s|
                         +============================================+%n""", hero.getHp(), enemy.getHp());
 
 
         Random rnd = new Random();
         Game game = new Game();
 
         Scanner sc = new Scanner(System.in);
         int round = 1;
 
         //while loop with the game
         while (hero.getHp() >= 0 || enemy.getHp() >= 0){
             //check if someone is the winner
             if(game.isGameEnded(hero, enemy)){break;}
             //chance of getting potions shop
             int chance = rnd.nextInt(6);
 
             System.out.printf("\n+===================Round=%s===================+\n", round);
 
             //overloaded methods that is needed for potion round and normal round
             if(chance == 0){
                 //potion round has 1/6 chance
                 if(game.round(sc, hero) == 1){
                     continue;
                 }
             }else {
                 //normal round has 5/6 chance
                 if(game.round(sc, hero, enemy) == 1){
                     continue;
                 }
             }
             round++;
         }
     }
 
     // run normal round
     private int round(Scanner sc, Hero hero, Enemy enemy){
         System.out.println("""
                \t  -----------------------------------
                \t  ||Enter 1 -> to attack           ||
                \t  ||Enter 2 -> to use shield       ||
                \t  ||Enter 3 -> to use potion       ||
                \t  -----------------------------------""");
 
         try {
             System.out.print("Select your option: ");
             int usersChoice = sc.nextInt();
             switch (usersChoice){
                 case 1 -> {
                     if(hero.isHit(enemy) == -1){
                         System.out.println("\t  ||Hero is missed                 ||");
                     }else {
                         System.out.println("\t  ||Hero hit enemy                 ||");
                     }
 
                     if(enemy.isHit(hero) == -1){
                         System.out.println("\t  ||Enemy is missed                ||");
                     }else {
                         System.out.println("\t  ||Enemy hit hero                 ||");
                     }
 
                     System.out.printf("""
                         +================Statistics==================+
                         | Hero's HP is -> %27s|
                         | Enemy's HP is -> %26s|
                         +============================================+%n""", hero.getHp(), enemy.getHp());
                 }
                 case 2 -> {
                     hero.useShield();
 
                     if(enemy.isHit(hero) == -1){
                         System.out.println("\t  ||Enemy is missed                ||");
                     }else {
                         System.out.println("\t  ||Enemy hit hero                 ||");
                     }
 
                     hero.useShield();
                 }
                 case 3 -> {
                     if(hero.drinkPotion() == 1){
                         return 1;
                     }
 
                     if(enemy.isHit(hero) == -1){
                         System.out.println("\t  ||Enemy is missed                ||");
                     }else {
                         System.out.println("\t  ||Enemy hit hero                 ||");
                     }
                     System.out.printf("""
                         +================Statistics==================+
                         | Hero's HP is -> %27s|
                         | Enemy's HP is -> %26s|
                         +============================================+%n""", hero.getHp(), enemy.getHp());
                 }
                 default -> {
                     System.out.println("Wrong input!");
                     return 1;
                 }
             }
         }catch (Exception e){
             System.out.println("Wrong input!");
             sc.next();
         }
         return 0;
     }
 
     // run potion round (special round)
     private int round(Scanner sc, Hero hero){
         Potions[] potions = Potions.generatePotions();
 
         System.out.printf("""
                \t  -----------------------------------
                \t  -----------POTIONS ROUND-----------
                \t  -----------------------------------
                \t  ||Enter 1 -> %-7s price: %5s||
                \t  ||Enter 2 -> %-7s price: %5s||
                \t  ||Enter 3 -> %-7s price: %5s||
                \t  ||Enter 4 -> to leave a shop     ||
                \t  -----------------------------------""",
                 potions[0].getName(), potions[0].getPrice(),
                 potions[1].getName(),potions[1].getPrice(),
                 potions[2].getName(), potions[2].getPrice());
 
         try {
             System.out.print("\nSelect your option: ");
             int usersChoice = sc.nextInt();
             if(hero.getPotion()[0] == null || hero.getPotion()[1] == null){
                 switch (usersChoice){
                     case 1 -> {
                         hero.buyPotion(potions[0]);
                     }
                     case 2 -> {
                         hero.buyPotion(potions[1]);
                     }
                     case 3 -> {
                         hero.buyPotion(potions[2]);
                     }
                     case 4 -> {
                         return 0;
                     }
                     default -> {
                         System.out.println("Wrong input!");
                         return 1;
                     }
                 }
             }else {
                 System.out.println("There is no place in inventory");
             }
 
         }catch (Exception e){
             System.out.println("Wrong input!");
             sc.next();
         }
         return 0;
     }
 
     // check if game ended
     private boolean isGameEnded(Hero hero, Enemy enemy){
         if(hero.getHp() == 0 && enemy.getHp() == 0){
             System.out.println("+===================Draw=====================+\n");
             System.out.println("\n+==================END=GAME==================+\n");
             return true;
         } else if (enemy.getHp() == 0) {
             System.out.println("+================Hero=wins===================+\n");
             System.out.println("\n+==================END=GAME==================+\n");
             return true;
         } else if (hero.getHp() == 0){
             System.out.println("+================Enemy=wins==================+\n");
             System.out.println("\n+==================END=GAME==================+\n");
             return true;
         }
         return false;
     }
 }
 