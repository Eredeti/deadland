import processing.sound.*;
SoundFile test;
SoundFile dead;
SoundFile nope;
SoundFile door;
SoundFile levier;
SoundFile pic;

int chkpt=0;

int hp = 1;
int te = 0;
int te1 = 0;

float gravity=4;
float vitesse=4;

int c;
int cr;
int cb;

int s = 0;
int m = 0;
int h = 0;

PImage fond;
PImage hend;
PImage hpon;
PImage hpoff;

Pers Persrouge = new Pers(40, 630, color(255, 0, 0), vitesse, gravity);
Pers Persbleu = new Pers(20, 630, color(0, 0, 255), vitesse, gravity);
Pers []Perss = {Persbleu, Persrouge};

Pic Pic1 = new Pic(150, 651);
Pic Pic2 = new Pic(350, 651);
Pic Pic3 = new Pic(720, 651);
Pic Pic4 = new Pic(550, 501);
Pic Pic5 = new Pic(640, 401);
Pic Pic6 = new Pic(410, 146);
Pic Pic7 = new Pic(680, 146);
Pic Pic8 = new Pic(320, 281);
Pic Pic9 = new Pic(1000, 282);
Pic Pic10 = new Pic(1000, 146);
Pic Pic11 = new Pic(1150, 281);
Pic Pic12 = new Pic(1150, 146);
Pic Pic13 = new Pic(870, 401);
Pic Pic14 = new Pic(660, 651);
Pic Pic15 = new Pic(830, 651);
Pic Pic16 = new Pic(1070, 651);
Pic Pic17 = new Pic(820, 551);
Pic []pics = {Pic1, Pic2, Pic3, Pic4, Pic5, Pic6, Pic7, Pic8, Pic9, Pic10, Pic11, Pic12, Pic13, Pic14, Pic15, Pic16, Pic17};

pique pique1 = new pique(250, 630);
pique pique2 = new pique(700, 262);
pique pique3 = new pique(1060, 125);
pique pique4 = new pique(1060, 262);
pique []piques = {pique1, pique2, pique3, pique4};

zone zone1 = new zone(270, 400, 400, 130, 400, 400, 100, 100);

plt plt1 = new plt(220, 590, 60, 30);
plt plt2 = new plt(610, 400, 60, 140);
plt plt3 = new plt(0, 530, 170, 10);
plt plt4 = new plt(210, 500, 400, 40);
plt plt5 = new plt(750, 280, 10, 550);
plt plt6 = new plt(720, 580, 35, 10);
plt plt7 = new plt(670, 530, 35, 10);
plt plt8 = new plt(720, 480, 35, 10);
plt plt9 = new plt(670, 430, 35, 10);
plt plt10 = new plt(720, 380, 35, 10);
plt plt11 = new plt(470, 400, 180, 10);
plt plt12 = new plt(0, 400, 400, 10);
plt plt13 = new plt(210, 400, 60, 100);
plt plt14 = new plt(280, 350, 80, 10);
plt plt15 = new plt(500, 350, 80, 10);
plt plt16 = new plt(210, 280, 540, 30);
plt plt17 = new plt(0, 330, 110, 10);
plt plt18 = new plt(0, 260, 60, 10);
plt plt19 = new plt(210, 145, 30, 135);
plt plt20 = new plt(140, 190, 100, 10);
plt plt21 = new plt(210, 145, 550, 30);
plt plt22 = new plt(860, 145, 350, 30);
plt plt23 = new plt(860, 280, 550, 30);
plt plt24 = new plt(800, 400, 400, 30);
plt plt25 = new plt(750, 550, 450, 30);
plt plt26 = new plt(1000, 400, 200, 150);
plt plt27 = new plt(0, 130, 100, 10);
plt plt28 = new plt(1230, 220, 100, 10);
plt plt29 = new plt(750, 330, 65, 10);
plt []plts = {plt1, plt2, plt3, plt4, plt5, plt6, plt7, plt8, plt9, plt10, plt11, plt12, plt13, plt14, plt15, plt16, plt17, plt18, plt19, plt20, plt21, plt22, plt23, plt24, plt25, plt26, plt27, plt28, plt29};

lvr lvr1 = new lvr(500, 560, 580, 540, 30, 110);
lvr lvr2 = new lvr(300, 60, 580, 60, 20, 85);
lvr lvr3 = new lvr(500, 60, 600, 60, 20, 85);
lvr lvr4 = new lvr(500, 210, 450, 175, 20, 105);
lvr lvr5 = new lvr(600, 210, 550, 175, 20, 105);
lvr lvr6 = new lvr(900, 210, 950, 60, 20, 90);
lvr lvr7 = new lvr(900, 60, 950, 175, 20, 110);
lvr []lvrs = {lvr1, lvr2, lvr3, lvr4, lvr5, lvr6, lvr7};

lvrc lvrc1 = new lvrc(270, 470, 230, 470, 30, 10, 13);
lvrc lvrc2 = new lvrc(580, 470, 230, 440, 30, 10, 20);
lvrc lvrc3 = new lvrc(0, 370, 0, 330, 100, 10, 15);
lvrc lvrc4 = new lvrc(0, 300, -50, 260, 100, 10, 15);
lvrc lvrc5 = new lvrc(240, 250, 760, 280, 100, 30, 15);
lvrc lvrc6 = new lvrc(1270, 250, 1210, 145, 100, 30, 15);
lvrc []lvrcs = {lvrc1, lvrc2, lvrc3, lvrc4, lvrc5, lvrc6};

zb zb1 = new zb(430, 540, 10, 55);
zb zb2 = new zb(500, 361, 80, 40);
zb zb3 = new zb(50, 271, 105, 60);
zb zb4 = new zb(480, 60, 60, 40);
zb zb5 = new zb(240, 175, 150, 105);
zb zb6 = new zb(590, 200, 40, 40);
zb zb7 = new zb(950, 360, 10, 40);
zb zb8 = new zb(1070, 360, 10, 40);
zb zb9 = new zb(1190, 360, 10, 40);
zb zb10 = new zb(1010, 310, 10, 50);
zb zb11 = new zb(1130, 310, 10, 50);
zb zb12 = new zb(1200, 400, 50, 10);
zb zb13 = new zb(1250, 485, 50, 10);
zb zb14 = new zb(1200, 570, 50, 10);
zb []zbs = {zb1, zb2, zb3, zb4, zb5, zb6, zb7, zb8, zb9, zb10, zb11, zb12, zb13, zb14};

zr zr1 = new zr(430, 595, 10, 55);
zr zr2 = new zr(280, 361, 80, 40);
zr zr3 = new zr(100, 341, 105, 60);
zr zr4 = new zr(280, 60, 60, 40);
zr zr5 = new zr(760, 145, 100, 30);
zr zr6 = new zr(490, 200, 40, 40);
zr zr7 = new zr(950, 310, 10, 50);
zr zr8 = new zr(1070, 310, 10, 50);
zr zr9 = new zr(1190, 310, 10, 50);
zr zr10 = new zr(1010, 360, 10, 40);
zr zr11 = new zr(1130, 360, 10, 40);
zr zr12 = new zr(1250, 400, 50, 10);
zr zr13 = new zr(1200, 485, 50, 10);
zr zr14 = new zr(1250, 570, 50, 10);
zr []zrs = {zr1, zr2, zr3, zr4, zr5, zr6, zr7, zr8, zr9, zr10, zr11, zr12, zr13, zr14};

end end1 = new end(0, 100, 210, 60, 1100, 250, 33, 60, 150, 40, color(255, 255, 0));
end end1bis = new end(0, 100, 750, 60, 600, 590, 0, 0, 0, 0, color(255, 255, 0));
end end2 = new end(1000, 620, 0, 410, 220, 130, 1099, 585, 180, 60, color(255, 255, 0));
end end3 = new end(0, 500, 750, 400, 300, 150, 0, 420, 205, 75, color(255, 255, 0));
end end4 = new end(970, 520, 760, 570, 240, 100, 785, 435, 200, 60, color(255, 255, 0));
end end5 = new end(800, 250, 0, 0, 0, 0, 0, 0, 0, 0, color(255, 255, 0));
end []ends = {end1, end1bis, end2, end3, end4, end5};

hend hend1 = new hend(760, 620);

boolean[] keys1;
boolean[] keys2;

void setup() {
  size(1300, 650);

  test = new SoundFile(this, "test.mp3");
  dead = new SoundFile(this, "dead.mp3");
  nope = new SoundFile(this, "nope.mp3");
  door = new SoundFile(this, "door.mp3");
  levier = new SoundFile(this, "levier.mp3");
  pic = new SoundFile(this, "pic.mp3");

  fond = loadImage("fond2.png");
  hend = loadImage("bernie.png");
  hpon = loadImage("hpon.png");
  hpoff = loadImage("hpoff.png");

  keys1=new boolean[3]; // fonction pour les bordures
  keys1[0]=false;
  keys1[1]=false;
  keys1[2]=false;

  keys2=new boolean[3]; // fonction pour les bordures
  keys2[0]=false;
  keys2[1]=false;
  keys2[2]=false;

  test.loop();
}

void draw() {  
  background(200, 255, 200);

  textSize(22);
  fill(0);
  if (te1==0) {
    text("CHECKPOINT", 750, 230);
  }

  if (te==0) {
    text("THE END", 10, 175);
  }

  for (int i = 0; i<zrs.length; i++)zrs[i].display();
  for (int i = 0; i<zbs.length; i++)zbs[i].display();
  for (int i = 0; i<pics.length; i++)pics[i].display();
  for (int i = 0; i<lvrcs.length; i++)lvrcs[i].display();
  for (int i = 0; i<lvrs.length; i++)lvrs[i].display();
  for (int i = 0; i<piques.length; i++)piques[i].display();

  zone1.display();

  for (int i = 0; i<plts.length; i++)plts[i].display();

  textSize(15);
  fill(0);
  text("Et non! C'est juste", 35, 75);
  text("un checkpoint", 45, 95);

  text("C'était au tout", 1120, 600);
  text("début en fait", 1125, 620);
  text("Suicide obligatoire :)", 1100, 640);

  text("T'as cru que c'était", 30, 450);
  text("aussi facile que ça ?", 27, 470);
  text("obligé.e.s de tout refaire :)", 10, 490);

  text("Oups ! Il nous restait", 795, 450);
  text("encore de la place !", 799, 470);
  text("Petit saut sur les pics :)", 790, 490);

  if (Persrouge.pos.x<1300 && Persrouge.pos.x>1140 && Persrouge.pos.y<400 && Persrouge.pos.y>310 || Persbleu.pos.x<1300 && Persbleu.pos.x>1140 && Persbleu.pos.y<400 && Persbleu.pos.y>310) {
    textSize(13);
    fill(0);
    text("petit conseil :", 1210, 330);
    text("maintiens la", 1210, 343);
    text("touche saut", 1210, 356);
  }

  hend1.carre();

  for (int i = 0; i<ends.length; i++) ends[i].carre();
  for (int i = 0; i<ends.length; i++) ends[i].display();

  image(fond, 0, 0, width, 60);

  timer();

  fill(0);
  textSize(20);
  text(c, 1210, 45); 

  compteur();

  if (hp==1)image(hpon, 1120, 510, 40, 40);
  if (hp==-1)image(hpoff, 1120, 510, 40, 40);

  for (int i = 0; i<Perss.length; i++)Perss[i].display();

  Persrouge.mouvement1();
  Persbleu.mouvement2();

  hend1.display();
}

void keyPressed() {
  if (key=='d') keys1[0]=true;
  if (key=='q') keys1[1]=true;
  if (key=='z') keys1[2]=true;
  if (key=='l') keys2[0]=true;
  if (key=='j') keys2[1]=true;
  if (key=='i') keys2[2]=true;
}

void keyReleased() {
  if (key=='d') keys1[0]=false;
  if (key=='q') keys1[1]=false;
  if (key=='z') keys1[2]=false;
  if (key=='l') keys2[0]=false;
  if (key=='j') keys2[1]=false;
  if (key=='i') keys2[2]=false;
}

void mouseReleased() {
  if ((1120 < mouseX) && (mouseX < 11600) && (510 < mouseY) && (mouseY < 560)) { 
    if (hp == 1) {
      hp = hp*-1;
      test.stop();
    } else if (hp == -1) {
      hp = hp*-1;
      test.loop();
    }
  }
}
class hend {
  float x;
  float y;

  hend (float nouvX, float nouvY) {
    x = nouvX;
    y = nouvY;
  }

  void carre() {
    stroke(0);
    fill(255, 255, 0);
    rect(x, y, 30, 30);
  }

  void display() {
    if (Persbleu.pos.x<x+30 && Persbleu.pos.x>x && Persbleu.pos.y<y+30 && Persbleu.pos.y>y && Persrouge.pos.x<x+30 && Persrouge.pos.x>x && Persrouge.pos.y<y+30 && Persrouge.pos.y>y) {
      image(hend, 0, 0, width, height);
      Persrouge.vt=0;
      Persrouge.g=0;
      Persrouge.acc.y=0;
      Persrouge.pos.y=638;
      Persbleu.vt=0;
      Persbleu.g=0;
      Persbleu.acc.y=0;
      Persbleu.pos.y=638;

      end1.x2=1100;
      end1.y2=250;
      end1.x4=150;
      end1.y4=40;
      end1bis.x2=600;
      end1bis.y2=590;
      end2.x2=220;
      end2.y2=130;
      end2.x4=180;
      end2.y4=60;
      end3.x2=300;
      end3.y2=150;
      end3.x4=205;
      end3.y4=75;
      end4.x2=240;
      end4.y2=100;
      end4.x4=200;
      end4.y4=60;

      chkpt=0;

      fill(0, 255, 0);
      rect(1050, 540, 200, 80);
      textSize(40);
      fill(0);
      text("RESTART", 1065, 595);

      fill(0);
      rect(width/2-100, 540, 200, 80);
      fill(255);
      textSize(35);
      text("Temps :", 585, 575);
      text(h, 590, 610);
      text(":", 615, 610);  
      text(":", 670, 610);

      if (s<10) {
        textSize(35);
        text(s, 702, 610);
        text("0", 680, 610);
      }
      if (s>9) {
        textSize(35);
        text(s, 680, 610);
      }

      if (m<10) {
        textSize(35);
        text(m, 648, 610);
        text("0", 626, 610);
      }
      if (m>9) {
        textSize(35);
        text(m, 626, 610);
      }

      int c1=c;

      noStroke();
      fill(0);
      rect(100, 540, 200, 40);
      fill(255, 0, 0);
      rect(100, 580, (cr*200)/(c1), 40);
      fill(0, 0, 255);
      rect(100+(cr*200)/c1, 580, (cb*200)/(c1), 40);

      textSize(25);
      fill(255);
      text("MORTS :", 125, 570);
      text(c1, 230, 570);
      fill(255);
      text(cr, 100+((cr*200)/(c1))/2-5, 610);
      text(cb, 100+((cr*200)/(c1))+((cb*200)/(c1))/2-5, 610);

      if (mousePressed && mouseX<1250 && mouseX>1050 && mouseY<620 && mouseY>540) {
        reset();
        s = 0;
        m = 0;
        h = 0;
        c = 0;
        Persbleu.vt=4;
        Persbleu.g=4;
        Persrouge.vt=4;
        Persrouge.g=4;
        Persrouge.acc.y=0.2;
        Persbleu.acc.y=0.2;
        cr = 0;
        cb = 0;
      }
    }
  }
}
class Pers {
  float x;
  float y;
  float xt1=400;
  float xt2=450;

  color couleur;
  float vt;
  float g;

  PVector pos = new PVector(x, y); 
  PVector vel = new PVector(0, 0);
  PVector acc = new PVector(0, 0);

  Pers (float nouvX, float nouvY, color nouvCouleur, float nouvVT, float nouvG) {
    pos.x = nouvX;
    pos.y = nouvY;

    couleur = nouvCouleur;
    vt = nouvVT;
    g = nouvG;
  }

  void mouvement1() {
    x=pos.x;
    y=pos.y;

    if (keyPressed==true) {
      if ((keys1[0])&&(Coll(pos.x+vt, pos.y))==0) pos.x = pos.x + vt;
      if ((keys1[1])&&(Coll(pos.x-vt, pos.y))==0) pos.x = pos.x - vt;
      if ((keys1[2])&&(Coll(pos.x, pos.y-9))==0) {
        pos.y = pos.y - 9;
        acc.y = 0.2;
      }
    }
  }

  void mouvement2() {
    x=pos.x;
    y=pos.y;

    if (keyPressed==true) {
      if ((keys2[0])&&(Coll(pos.x+vt, pos.y))==0)pos.x = pos.x + vt;
      if ((keys2[1])&&(Coll(pos.x-vt, pos.y))==0)pos.x = pos.x - vt;
      if ((keys2[2])&&(Coll(pos.x, pos.y-9))==0) {

        pos.y = pos.y - 9;
        acc.y = 0.2;
      }
    }
  }

  void display() {

    pos.x=constrain(pos.x, 0+10, width-10);
    pos.y=constrain(pos.y, 0, height);

    stroke(0);
    fill(couleur);
    ellipse(x, y, 20, 20);

    pos.add(vel);
    vel.add(acc);

    pos.y = pos.y+g;
    acc.y = 0.1;

    if (y>height-10) {
      g=0;
      acc.y=0;
      vel.y=0;
      pos.y = height-10;
    } else
      if (y<height-10) g=gravity;
  }
}
class zb {
  float x;
  float y;
  float x1;
  float y1;

  zb (float nouvX, float nouvY, float nouvX1, float nouvY1) {
    x = nouvX;
    y = nouvY;
    x1 = nouvX1;
    y1 = nouvY1;
  }

  void display() {
    fill(0, 0, 255);
    rect(x, y, x1, y1);

    if (abs(Persrouge.pos.x - (2*x+x1)/2)<(x1)/2+10 && abs(Persrouge.pos.y - (2*y+y1)/2) < (y1/2)) {
      reset();
      cr = cr+1;
    }
  }
}
class zr {
  float x;
  float y;
  float x1;
  float y1;

  zr (float nouvX, float nouvY, float nouvX1, float nouvY1) {
    x = nouvX;
    y = nouvY;
    x1 = nouvX1;
    y1 = nouvY1;
  }

  void display() {
    fill(255, 0, 0);
    rect(x, y, x1, y1);

    if (abs(Persbleu.pos.x - (2*x+x1)/2)<(x1)/2+10 && abs(Persbleu.pos.y - (2*y+y1)/2) < (y1/2)) {
      reset();
      cr = cr+1;
    }
  }
}
class end {
  float x;
  float y;
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float x4;
  float y4;

  color couleur;

  end (float nouvX, float nouvY, float nouvX1, float nouvY1, float nouvX2, float nouvY2, float nouvX3, float nouvY3, float nouvX4, float nouvY4, color nouvColor) {
    x = nouvX;
    y = nouvY;
    x1 = nouvX1;
    y1 = nouvY1;
    x2 = nouvX2;
    y2 = nouvY2;
    x3 = nouvX3;
    y3 = nouvY3;
    x4 = nouvX4;
    y4 = nouvY4;
    couleur = nouvColor;
  }

  void display() {

    stroke(0);
    fill(0);
    rect(x1, y1, x2, y2);


    if (Persbleu.pos.x<x+30 && Persbleu.pos.x>x && Persbleu.pos.y<y+30 && Persbleu.pos.y>y && Persrouge.pos.x<x+30 && Persrouge.pos.x>x && Persrouge.pos.y<y+30 && Persrouge.pos.y>y) {
      if (hp==1 && x2>0) {
        nope.play();
      }
      x2 = 0;
      y2 = 0;
      x4 = 0;
      y4 = 0;
      te = 1;
    }
    if (Persbleu.pos.x>x1-10 && Persbleu.pos.x<x1+x2+10 && Persbleu.pos.y>y1-12 && Persbleu.pos.y<y1) {
      Persbleu.pos.y = y1-15;
      Persbleu.acc.y = 0;
      Persbleu.vel.y = 0;
    } 
    if (Persrouge.pos.x>x1-10 && Persrouge.pos.x<x1+x2+10 && Persrouge.pos.y>y1-12 && Persrouge.pos.y<y1) {
      Persrouge.pos.y = y1-15;
      Persrouge.acc.y = 0;
      Persrouge.vel.y = 0;
    }
    if (Persbleu.pos.x<end1.x+30 && Persbleu.pos.x>end1.x && Persbleu.pos.y<end1.y+30 && Persbleu.pos.y>end1.y && Persrouge.pos.x<end1.x+30 && Persrouge.pos.x>end1.x && Persrouge.pos.y<end1.y+30 && Persrouge.pos.y>end1.y) {
      chkpt =1;
      end1.couleur=color(253, 108, 158);
      end1bis.couleur=color(253, 108, 158);
      end5.couleur=color(255, 255, 0);
    }
    if (Persbleu.pos.x<end2.x+30 && Persbleu.pos.x>end2.x && Persbleu.pos.y<end2.y+30 && Persbleu.pos.y>end2.y && Persrouge.pos.x<end2.x+30 && Persrouge.pos.x>end2.x && Persrouge.pos.y<end2.y+30 && Persrouge.pos.y>end2.y) {
      chkpt = 0;
      end1.couleur=color(255, 255, 0);
      end1bis.couleur=color(255, 255, 0);
      end5.couleur=color(255, 255, 0);
    }
    if (Persbleu.pos.x<end4.x+30 && Persbleu.pos.x>end4.x && Persbleu.pos.y<end4.y+30 && Persbleu.pos.y>end4.y && Persrouge.pos.x<end4.x+30 && Persrouge.pos.x>end4.x && Persrouge.pos.y<end4.y+30 && Persrouge.pos.y>end4.y) {
      chkpt = 0;
      end1.couleur=color(255, 255, 0);
      end1bis.couleur=color(255, 255, 0);
      end5.couleur=color(255, 255, 0);
    }
    if (Persbleu.pos.x<end5.x+30 && Persbleu.pos.x>end5.x && Persbleu.pos.y<end5.y+30 && Persbleu.pos.y>end5.y && Persrouge.pos.x<end5.x+30 && Persrouge.pos.x>end5.x && Persrouge.pos.y<end5.y+30 && Persrouge.pos.y>end5.y) {
      chkpt = 2;
      end1.couleur=color(255, 255, 0);
      end1bis.couleur=color(255, 255, 0);
      end5.couleur=color(253, 108, 158);
      te1=1;
    }
  }

  void carre() {
    stroke(0);
    fill(couleur);
    rect(x, y, 30, 30);

    noStroke();
    fill(200, 255, 200);
    rect(x3, y3, x4, y4);
  }
}
void compteur() {

  float c1=c;
  textSize(23);
  fill(255);
  text("Le.a plus nul.le :", 1010, 435);
  textSize(25);
  text("SON :", 1030, 537);

  if (cr==0 && cb==0) {
    textSize(20);

    noStroke();
    fill(255, 0, 0);
    rect(1030, 450, 75, 20);
    fill(0, 0, 255);
    rect(1105, 450, 75, 20);

    fill(255, 0, 0);
    text(cr, 1067, 500);
    fill(0, 0, 255);
    text(cb, 1142, 500);
  }
  if (cr>0 || cb>0) {
    textSize(20);

    noStroke();
    fill(255, 0, 0);
    rect(1030, 450, (cr*150)/(c1), 20);
    fill(0, 0, 255);
    rect(1030+(cr*150)/c1, 450, (cb*150)/(c1), 20);

    fill(255, 0, 0);
    text(cr, 1030+((cr*150)/(c1))/2-5, 500);
    fill(0, 0, 255);
    text(cb, 1030+((cr*150)/(c1))+((cb*150)/(c1))/2-5, 500);
  }
}
class lvr {
  float x;
  float y;
  float x1;
  float y1;
  float x2;
  float y2;
  float k = 1;

  lvr (float nouvX, float nouvY, float nouvX1, float nouvY1, float nouvX2, float nouvY2) {
    x = nouvX;
    y = nouvY;
    x1 = nouvX1;
    y1 = nouvY1;
    x2 = nouvX2;
    y2 = nouvY2;
  }

  void display() {
    fill(125, 255, 125);
    rect(x, y, 20, 20);

    fill(0, 125, 0);
    rect(x1, y1, x2, y2);

    if (y2>0) {
      if (Persrouge.pos.x>x-5 && Persrouge.pos.x<x+35 && Persrouge.pos.y>y && Persrouge.pos.y<y+40 || Persbleu.pos.x>x-5 && Persbleu.pos.x<x+35 && Persbleu.pos.y>y && Persbleu.pos.y<y+40) {
        if (hp==1 && k==1) {
          levier.play();
        }
        y2 = y2 - k;
        k = k+1;
      }
    }
    if (abs(Persrouge.pos.x - (2*x1+x2)/2)<(x2)/2+10 && abs(Persrouge.pos.y - (2*y1+y2)/2) < (y2/2)) {
      reset();
      cr=cr+1;
    }
    if (abs(Persbleu.pos.x - (2*x1+x2)/2)<(x2)/2+10 && abs(Persbleu.pos.y - (2*y1+y2)/2) < (y2/2)) {
      cb=cb+1;
      reset();
    }
  }
}
class lvrc {
  float x;
  float y;
  float x1;
  float y1;
  float x2;
  float y2;
  float l;
  float k = 1;

  lvrc (float nouvX, float nouvY, float nouvX1, float nouvY1, float nouvX2, float nouvY2, float nouvL) {
    x = nouvX;
    y = nouvY;
    x1 = nouvX1;
    y1 = nouvY1;
    x2 = nouvX2;
    y2 = nouvY2;
    l = nouvL;
  }

  void display() {
    fill(150, 150, 150);
    rect(x, y, 30, 30);

    fill(100, 100, 100);
    rect(x1, y1, x2, y2);

    if (k<l) {
      if (Persrouge.pos.x>x-5 && Persrouge.pos.x<x+35 && Persrouge.pos.y>y && Persrouge.pos.y<y+40 || Persbleu.pos.x>x-5 && Persbleu.pos.x<x+35 && Persbleu.pos.y>y && Persbleu.pos.y<y+40) {
        if (k==1 && hp==1) {
          door.play();
        }
        x1 = x1+k;
        k = k+1;
      }
    }
    if (Persrouge.pos.x>x1-10 && Persrouge.pos.x<x1+x2+10 && Persrouge.pos.y>y1-12 && Persrouge.pos.y<y1+y2) {
      Persrouge.pos.y = y1-15;
      Persrouge.acc.y = 0;
      Persrouge.vel.y = 0;
    }
    if (Persbleu.pos.x>x1-10 && Persbleu.pos.x<x1+x2+10 && Persbleu.pos.y>y1-12 && Persbleu.pos.y<y1+y2) {
      Persbleu.pos.y = y1-15;
      Persbleu.acc.y = 0;
      Persbleu.vel.y = 0;
    }
  }
}
class Pic {
  float x;
  float y;

  float yy;
  float k=-5;
  int l = 20;

  Pic (float nouvX, float nouvY) {
    x = nouvX;
    y = nouvY;
  }

  void display() {
    stroke(0);
    fill(0, 255, 255);
    triangle(x, y, x-10, y+20, x+10, y+20);
    fill(255, 255, 0);
    triangle(x+l, y, x-10+l, y+20, x+10+l, y+20);
    fill(255, 0, 255);
    triangle(x-l, y, x-10-l, y+20, x+10-l, y+20);

    if (k>-8) {
      if (Persrouge.pos.x>x-55 && Persrouge.pos.x<x+55 && Persrouge.pos.y>y-40 && Persrouge.pos.y<y+10||Persbleu.pos.x>x-55 && Persbleu.pos.x<x+55 && Persbleu.pos.y>y-40 && Persbleu.pos.y<y+10) {
        if (k==-5 && hp==1) {
          pic.play();
        }
        y=y+k;
        k -= 1;
      }
    }

    if (Persrouge.pos.x>x-35 && Persrouge.pos.x<x+35 && Persrouge.pos.y>y-10 && Persrouge.pos.y<y+20) {
      reset();
      cr = cr+1;
    }
    if (Persbleu.pos.x>x-35 && Persbleu.pos.x<x+35 && Persbleu.pos.y>y-10 && Persbleu.pos.y<y+20) {
      reset();
      cb=cb+1;
    }
  }
}
class pique {
  float x;
  float y;
  int l = 20;

  pique (float nouvX, float nouvY) {
    x = nouvX;
    y = nouvY;
  }

  void display() {
    stroke(0);
    fill(0, 255, 255);
    triangle(x, y, x-10, y+20, x+10, y+20);
    fill(255, 255, 0);
    triangle(x+l, y, x-10+l, y+20, x+10+l, y+20);
    fill(255, 0, 255);
    triangle(x-l, y, x-10-l, y+20, x+10-l, y+20);

    if (Persrouge.pos.x>x-35 && Persrouge.pos.x<x+35 && Persrouge.pos.y>y-20 && Persrouge.pos.y<y+20) {
      reset();
      cr=cr+1;
    }
    if (Persbleu.pos.x>x-35 && Persbleu.pos.x<x+35 && Persbleu.pos.y>y-20 && Persbleu.pos.y<y+20) {
      reset();
      cb=cb+1;
    }
  }
}
class plt {
  float x;
  float x1;
  float y;
  float y1;

  plt (float nouvX, float nouvY, float nouvX1, float nouvY1) {
    x = nouvX;
    y = nouvY;
    x1 = nouvX1;
    y1 = nouvY1;
  }

  void display() {
    fill(0);
    rect(x, y, x1, y1);

    if (Persbleu.pos.x>x-10 && Persbleu.pos.x<x+x1+10 && Persbleu.pos.y>y-12 && Persbleu.pos.y<y) {
      Persbleu.pos.y = y-15;
      Persbleu.acc.y = 0;
      Persbleu.vel.y = 0;
    }

    if (Persrouge.pos.x>x-10 && Persrouge.pos.x<x+x1+10 && Persrouge.pos.y>y-12 && Persrouge.pos.y<y) {
      Persrouge.pos.y = y-15;
      Persrouge.acc.y = 0;
      Persrouge.vel.y = 0;
    }
  }
}

int Coll(float xCol, float yCol) {

  for (int i = 0; i<plts.length; i++) {
    //if (xCol<plts[i].x+plts[i].x1+10 && xCol>plts[i].x-10 && yCol>plts[i].y && yCol<plts[i].y+plts[i].y1)return 1;
    if (abs(xCol - (2*plts[i].x+plts[i].x1)/2)<(plts[i].x1)/2+10 && abs(yCol - (2*plts[i].y+plts[i].y1)/2) < (plts[i].y1/2))return 1;
  }

  for (int i = 0; i<lvrcs.length; i++) {
    //if (xCol<lvrc1.x1+lvrc1.x2+lvrc1.k-15 && xCol>lvrc1.x1+lvrc1.k-15 && yCol>lvrc1.y1 && yCol<lvrc1.y1+lvrc1.y2)return 1; 
    if (abs(xCol - (2*lvrcs[i].x1+lvrcs[i].x2)/2)<(lvrcs[i].x2)/2+10 && abs(yCol - (2*lvrcs[i].y1+lvrcs[i].y2)/2) < (lvrcs[i].y2/2))return 1;
  }

  for (int i = 0; i<ends.length; i++) {
    if (abs(xCol - (2*ends[i].x1+ends[i].x2)/2)<(ends[i].x2)/2+10 && abs(yCol - (2*ends[i].y1+ends[i].y2)/2) < (ends[i].y2/2))return 1;
    //if (xCol<end1.x1+end1.x2+10 && xCol>end1.x1-10 && yCol>end1.y1 && yCol<end1.y1+end1.y2)return 1;
  }

  if (xCol<1300 && xCol>0 && yCol>0  && yCol<60)return 1;

  return 0;
}
void reset() {  
  for (int i = 0; i<pics.length; i++)pics[i].k=-5;
  Pic1.x=150;
  Pic1.y=651;
  Pic2.x=350;
  Pic2.y=651;
  Pic3.x=720;
  Pic3.y=651;
  Pic4.x=550;
  Pic4.y=501;
  Pic5.x=640;
  Pic5.y=401;
  Pic6.x=410;
  Pic6.y=146;
  Pic7.x=680;
  Pic7.y=146;
  Pic8.x=320;
  Pic8.y=281;
  Pic9.x=1000;
  Pic9.y=281;
  Pic10.x=1000;
  Pic10.y=146;
  Pic11.x=1150;
  Pic11.y=281;
  Pic12.x=1150;
  Pic12.y=146;
  Pic13.x=870;
  Pic13.y=401;
  Pic14.x=660;
  Pic14.y=651;
  Pic15.x=830;
  Pic15.y=651;
  Pic16.x=1070;
  Pic16.y=651;
  Pic17.x=820;
  Pic17.y=551;


  if (chkpt==0) {
    Persrouge.pos.x=20;
    Persrouge.pos.y=638;
    Persbleu.pos.x=40;
    Persbleu.pos.y=638;
  }

  if (chkpt==1) {
    Persrouge.pos.x=10;
    Persrouge.pos.y=110;
    Persbleu.pos.x=20;
    Persbleu.pos.y=110;
  }

  if (chkpt==2) {
    Persrouge.pos.x=810;
    Persrouge.pos.y=270;
    Persbleu.pos.x=830;
    Persbleu.pos.y=270;
  }

  lvr1.x1=580;
  lvr1.y1=540;
  lvr2.x1=580;
  lvr2.y1=60;
  lvr3.x1=600;
  lvr3.y1=60;
  lvr4.x1=450;
  lvr4.y1=175;
  lvr5.x1=550;
  lvr5.y1=175;
  lvr6.x1=950;
  lvr6.y1=60;
  lvr7.x1=950;
  lvr7.y1=175;

  zone1.x1=400;
  zone1.y1=130;

  for (int i = 0; i<lvrcs.length; i++)lvrcs[i].k=1;
  lvrc1.x1=230;
  lvrc1.l=13;
  lvrc2.x1=230;
  lvrc2.l=20;
  lvrc3.x1=0;
  lvrc3.l=15;
  lvrc4.x1=-50;
  lvrc4.l=15;
  lvrc5.x1=760;
  lvrc5.l=15;
  lvrc6.x1=1210;
  lvrc6.l=15;

  for (int i = 0; i<lvrs.length; i++)lvrs[i].k=1;
  lvr1.y2=110;
  lvr2.y2=85;
  lvr3.y2=85;
  lvr4.y2=105;
  lvr5.y2=105;
  lvr6.y2=90;
  lvr7.y2=110;

  c=c+1;

  if (hp==1) {
    dead.play();
  }
}
void timer() {
  fill(0);
  int k=frameCount;

  if (Persbleu.pos.x<hend1.x+30 && Persbleu.pos.x>hend1.x && Persbleu.pos.y<hend1.y+30 && Persbleu.pos.y>hend1.y && Persrouge.pos.x<hend1.x+30 && Persrouge.pos.x>hend1.x && Persrouge.pos.y<hend1.y+30 && Persrouge.pos.y>hend1.y) {
    k=frameCount/60-frameCount/60;
  }

  if (k/60>0) {
    s = s+1;
    frameCount=0;
  }
  if (s>59) {
    m = m+1;
    s= 0;
    frameCount = 0;
  }
  if (m>59) {
    m = 0;
    h=h+1;
  }

  if (s<10) {
    textSize(20);
    text(s, 1152, 45);
    text("0", 1140, 45);
  }
  if (s>9) {
    textSize(20);
    text(s, 1140, 45);
  }

  if (m<10) {
    textSize(20);
    text(m, 1122, 45);
    text("0", 1110, 45);
  }
  if (m>9) {
    textSize(20);
    text(m, 1110, 45);
  }

  fill(0);
  textSize(20);
  text(h, 1090, 45);
  text(":", 1105, 45);
  text(":", 1135, 45);

  fill(255, 0, 0);
}
class zone {
  float x;
  float y;
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;

  zone(float nouvX, float nouvY, float nouvX1, float nouvY1, float nouvX2, float nouvY2, float nouvX3, float nouvY3) {
    x = nouvX;
    y = nouvY;
    x1 = nouvX1;
    y1 = nouvY1;
    x2 = nouvX2;
    y2 = nouvY2;
    x3 = nouvX3;
    y3 = nouvY3;
  }

  void display() {
    fill(0);
    rect(x, y, x1, y1);

    if (Persrouge.pos.x<x2+x3 && Persrouge.pos.x>x2 && Persrouge.pos.y<y2+y3 && Persrouge.pos.y>y2) {
      x1=0;
      y1=0;
    }
    if (Persbleu.pos.x<x2+x3 && Persbleu.pos.x>x2 && Persbleu.pos.y<y2+y3 && Persbleu.pos.y>y2) {
      x1=0;
      y1=0;
    }
  }
}
