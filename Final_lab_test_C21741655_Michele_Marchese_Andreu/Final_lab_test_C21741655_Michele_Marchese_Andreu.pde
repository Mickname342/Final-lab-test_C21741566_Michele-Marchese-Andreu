int circles_random;
int random_colour;
int gender;
int random_eyes;
float theta;
int r = 30;
int number_words;
String[] words1 = {"potato","giant","happy","pants","paper","water","hole","electric","controller","mouse","reflected","word"};
int random_word1;
String[] words2 = {"potato","giant","happy","pants","paper","water","hole","electric","controller","mouse","reflected","word"};
int random_word2;
String[] words3 = {"potato","giant","happy","pants","paper","water","hole","electric","controller","mouse","reflected","word"};
int random_word3;
String[] words4 = {"potato","giant","happy","pants","paper","water","hole","electric","controller","mouse","reflected","word"};
int random_word4;
String[] words5 = {"potato","giant","happy","pants","paper","water","hole","electric","controller","mouse","reflected","word"};
int random_word5;

void setup(){
  size(500,500);
  }
 
void draw(){
  background(0);
  fill(0);
  colorMode(HSB);
  stroke(random_colour,255,255);
  draw_eyes();
  draw_lines();
  draw_circles();
  draw_gender();
  write_text();
  }

void draw_eyes(){
  theta = (PI)/(random_eyes +1);
  for(int i = 0; i < random_eyes;i++){
    line(width/2, height/3, width/2 + sin(theta + i*theta - PI/2 ) * r, height/3 - cos(theta + i * theta - PI/2 ) * r);
    circle(width/2 + sin(theta + i*theta - PI/2 ) * r, height/3 - cos(theta + i * theta - PI/2 ) * r,7);
    }
  }

void draw_lines(){
  for(int i = 0; i < circles_random-1;i++){
    line(220,height/3+i*30+30,280,height/3+i*30+30);
    }
  }

void draw_circles(){
  for(int i = 0; i < circles_random;i++){
    circle(width/2,height/3+i*30,30);
    }
  }

void draw_gender(){
  if( gender == 1 || gender == 3){
    line(width/2,height/3+circles_random*30-15,width/2,height/3+circles_random*30);
    circle(width/2,height/3+circles_random*30,7);
    }
  if( gender == 2 || gender == 3){
    circle(width/2,height/3+circles_random*30-30,15);
    }
  }

void keyPressed() 
  {
  if (key == 32)
    {
    circles_random = int(random(1,11));
    random_colour = int(random(0,255));
    gender = int(random(1,4));
    random_eyes = int(random(0,10));
    number_words = int(random(1,6));
    random_word1 = int(random(1,12));
    random_word2 = int(random(1,12));
    random_word3 = int(random(1,12));
    random_word4 = int(random(1,12));
    random_word5 = int(random(1,12));
    //the circles_random, random_eyes and numer_words have a possibility to generate a nuber that is 1 higher of the maximum because
    //if they only had up to the maximum they would never give that number
    } 
  }

void write_text(){
  fill(random_colour,255,255);
  textAlign(CENTER,TOP);
  textSize(20);
  if(number_words == 1){
    text(words1[random_word1],width/2,height/8);
    }
  if(number_words == 2){
    text(words1[random_word1]+" "+words2[random_word2],width/2,height/8);
    }
  if(number_words == 3){
    text(words1[random_word1]+" "+words2[random_word2]+" "+words3[random_word3],width/2,height/8);
    }
  if(number_words == 4){
    text(words1[random_word1]+" "+words2[random_word2]+" "+words3[random_word3]+" "+words4[random_word4],width/2,height/8);
    }
  if(number_words == 5){
    text(words1[random_word1]+" "+words2[random_word2]+" "+words3[random_word3]+" "+words4[random_word4]+" "+words5[random_word5],width/2,height/8);
    }
  }
