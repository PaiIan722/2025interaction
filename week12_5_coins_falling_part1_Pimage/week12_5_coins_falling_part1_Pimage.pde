//week12_5_coins_falling_part1_Pimage
PImage imgCoin;
void setup(){
 size(500,500);
 imgCoin = loadImage("coin.jpg");
}
float x = 0, y = 0;
void draw(){
 background(255);
 image(imgCoin,x,y,100,100);
 y += 3;
}
