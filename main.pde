int sizev;
Boolean drawe, drawi;
void setup() {
  colorMode(HSB);
  sizev=3000;
  size(3000, 3000);
  drawe=false;
  drawi=true;
  textSize(30);
}
void draw() {
  if (drawe==false) {
    background(0);
    text("Loading...",700,400);
  } else {
    if (drawi==true) {
    background(0);
      gas();
      filter(BLUR, 10);
      stars();
      drawi=false;
    }
  }
  drawe=true;
}


void stars() {
  for (int x=0;x<=sizev;x++) {
    for (int y=0;y<=sizev;y++) {
      if (int(random(1000))==1) {
        stroke(random(255),100,20);
        ellipse(x,y,random(3),random(3));
        if (int(random(200))==1) {
          int rx=int(random(200)-100)+x;
          int ry=int(random(200)-100)+y;
          stroke(random(255),100,20);
          ellipse(rx,ry,random(3),random(3));
          stroke(255,50);
          line(rx,ry,x,y);
          if (int(random(3))==1) {
            int r2x=int(random(200)-100)+x;
            int r2y=int(random(200)-100)+y;
            stroke(random(255),100,20);
            ellipse(r2x,r2y,random(3),random(3));
            stroke(255,50);
            line(r2x,r2y,rx,ry);
            if (int(random(3))==1) {
              line(r2x,r2y,x,y);
            }
          }
        }
      }
    }
  }
}

void gas() {
  for (int x=0;x<=sizev;x++) {
    for (int y=0;y<=sizev;y++) {
      if (int(random(1500))==1) {
        stroke(0,0);
        fill(random(255),255,100,10);
        ellipse(x,y,random(200),random(200));
      }
    }
  }
  fill(255,255);
}