public class Main {
    public static void main(String[] args) {
        Hero hero = new Hero(2000, 0, 150, 0, false, 0);
        Enemy enemy = new Enemy(700, 50, 250, "Dragon");

        Game.startGame(hero, enemy);
    }
}
