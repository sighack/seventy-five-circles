void circle1(float x, float y, float r) {
  noStroke();
  colorMode(HSB);
  fill(random(255));
  ellipse(x, y, r*2, r*2);
}

void circle2(float x, float y, float r) {
  float b = int(random(100, 200));
  float sw = 1;
  float hue = random(360);
  for (float i = 0; i < 360; i+=0.025) {
    stroke(random(255), 10);
    strokeWeight(sw);
    line(x, y, x + (r - sw/2) * cos(radians(i)), y + (r - sw/2) * sin(radians(i)));
  }
}

void circle3(float x, float y, float r) {
  float b = int(random(100, 200));
  float step = 360.0/b;
  float sw = 10;
  //colorMode(HSB);
  float hue = random(255);
  float i = r;
  float t = 0;

  while (i >= sw/2) {
    stroke(random(150, 255), 10);
    strokeWeight(sw);
    ellipse(x + (i - sw/2) * cos(radians(t)), y + (i - sw/2) * sin(radians(t)), sw, sw);
    i -= 0.005;
    t += 1;
  }
}

void circle4(float x, float y, float r) {
  float sw = 5;
  colorMode(HSB);
  float hue = random(360);
  float i = r;
  float t = 0;
  //stroke(0);
  //strokeWeight(1);
  //ellipse(x, y, 2*r, 2*r);
  while (i >= sw/2) {
    fill(random(0, 200), 10);
    //strokeWeight(sw);
    noStroke();
    ellipse(x + (i - sw/2) * cos(radians(t)), y + (i - sw/2) * sin(radians(t)), sw, sw);
    i -= 0.01;
    t += 1;
  }
}

void circle5(float x, float y, float r) {
  float rt = random(360);
  noFill();
  stroke(0, 50);
  ellipse(x, y, 2*r, 2*r);
  stroke(0, 50);
  for (float i = 0; i <= 2*r; i+=5) {
    float cx = x + (r - i/2) * cos(radians(rt));
    float cy = y + (r - i/2) * sin(radians(rt));
    ellipse(cx, cy, i, i);
  }
}

void circle6(float x, float y, float r) {
  float rt = random(360);
  noFill();
  stroke(0, 50);
  ellipse(x, y, 2*r, 2*r);
  stroke(0, 50);
  for (float i = 0; i <= 2*r; i+=random(1, 10)) {
    strokeWeight(random(1, 10));
    float cx = x + (r - i/2) * cos(radians(rt));
    float cy = y + (r - i/2) * sin(radians(rt));
    ellipse(cx, cy, i, i);
  }
}

void circle7(float x, float y, float r) {
  noFill();
  stroke(0, 50);
  ellipse(x, y, 2*r, 2*r);
  stroke(0, 5);
  for (int n = 0; n < 10; n++) {
    float rt = random(360);
    for (float i = 0; i <= 2*r; i+=random(1, 10)) {
      strokeWeight(random(1, 5));
      float cx = x + (r - i/2) * cos(radians(rt));
      float cy = y + (r - i/2) * sin(radians(rt));
      ellipse(cx, cy, i, i);
    }
  }
}

void circle8(float x, float y, float r) {
  noFill();
  stroke(0, 50);
  ellipse(x, y, 2*r, 2*r);
  stroke(0, 5);
  for (float rt = 0; rt < 360; rt += 5) {
    for (float i = 0; i <= 2*r; i+=random(1, 20)) {
      strokeWeight(random(1, 5));
      float cx = x + (r - i/2) * cos(radians(rt));
      float cy = y + (r - i/2) * sin(radians(rt));
      ellipse(cx, cy, i, i);
    }
  }
}

void circle9(float x, float y, float r) {
  noFill();
  stroke(0, 5);
  for (float i = 0; i <= int(2 * PI * r * 1); i++) {
    float rt1 = random(360);
    float rt2 = random(360);
    strokeWeight(random(5, 10));
    float cx1 = x + r * cos(radians(rt1));
    float cy1 = y + r * sin(radians(rt1));

    float cx2 = x + r * cos(radians(rt2));
    float cy2 = y + r * sin(radians(rt2));
    line(cx1, cy1, cx2, cy2);
  }
}

void circle10(float x, float y, float r) {
  noFill();
  stroke(0, 5);
  for (float i = 0; i <= int(2 * PI * r / 10); i++) {
    float rt1 = random(360);
    float rt2 = random(360);
    float rt3 = random(360);

    noStroke();
    fill(0, 20);
    float cx1 = x + r * cos(radians(rt1));
    float cy1 = y + r * sin(radians(rt1));

    float cx2 = x + r * cos(radians(rt2));
    float cy2 = y + r * sin(radians(rt2));

    float cx3 = x + r * cos(radians(rt3));
    float cy3 = y + r * sin(radians(rt3));

    triangle(cx1, cy1, cx2, cy2, cx3, cy3);
  }
  fill(0, 10);
  ellipse(x, y, 2*r, 2*r);
  strokeWeight(1);
  noFill();
  stroke(0, 20);
  ellipse(x, y, 2*r, 2*r);
}

void circle11(float x, float y, float r) {
  noFill();
  stroke(0, random(50, 100));
  strokeWeight(random(2, 10));
  ellipse(x, y, r*2, r*2);
}

void circle12(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (float i = 0; i <= r - sw/2; i+=sw) {
    for (int k = 0; k < 100; k++) {
      stroke(0, random(1, 5));
      arc(x, y, 2*i, 2*i, random(-TWO_PI, TWO_PI), random(-TWO_PI, TWO_PI));
    }
  }
}

void circle13(float x, float y, float r) {
  noFill();
  float sw = 5;
  strokeWeight(sw);
  for (float i = 0; i <= r - sw/2; i+=sw) {
    for (int k = 0; k < 100; k++) {
      stroke(0, random(1, 10));
      arc(x, y, 2*i, 2*i, random(TWO_PI + PI/2), random(TWO_PI + PI/2));
    }
  }
}

void circle14(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (float i = 0; i <= r - sw/2; i+=3*sw) {
    for (int k = 0; k < 30; k++) {
      stroke(0, random(1, 10));
      arc(x, y, 2*i, 2*i, random(TWO_PI + PI/2), random(TWO_PI + PI/2), CHORD);
    }
  }
}

void circle15(float x, float y, float r) {
  noFill();
  float sw = 2;
  float b = PI/10;
  strokeWeight(sw);
  for (float q = 0; q < TWO_PI; q += 2*b) {
    for (float i = 0; i <= r - sw/2; i+=random(2, 3)*sw) {
      for (int k = 0; k < 30; k++) {
        stroke(0, random(1, 10));
        arc(x, y, 2*i, 2*i, q, q + b);
      }
    }
  }
  sw = 4;
  strokeWeight(sw);
  for (float q = b; q < TWO_PI + b; q += 2*b) {
    for (float i = 0; i <= r - sw/2; i+=random(1.2, 2)*sw) {
      for (int k = 0; k < 5; k++) {
        stroke(0, random(10, 20));
        arc(x, y, 2*i, 2*i, q, q + b);
      }
    }
  }

  fill(0, 10);
  ellipse(x, y, 2*r, 2*r);
}

void circle16(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (int k = 0; k < 50; k++) {
    stroke(0, random(10, 30));
    noFill();
    strokeWeight(random(1, 3));
    float nr = random(1, r-1);
    float t = radians(random(360));
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);  
    ellipse(nx, ny, 2*(r-nr), 2*(r-nr));
  }
}

void circle17(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (int k = 0; k < 20; k++) {
    fill(0, random(5, 20));
    noStroke();
    float nr = random(1, (r-1)/2);
    float t = radians(random(360));
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);  
    ellipse(nx, ny, 2*(r-nr), 2*(r-nr));
  }
}

void circle18(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (int k = 0; k < 1000; k++) {
    fill(0, random(5, 20));
    noStroke();
    float t = radians(random(360));
    float nr = random(0, r);
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);
    ellipse(nx, ny, 10, 10);
  }
  for (int k = 0; k < 2000; k++) {
    fill(0, random(20, 40));
    noStroke();
    float t = radians(random(360));
    float nr = random(0, r);
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);
    ellipse(nx, ny, 5, 5);
  }
  for (int k = 0; k < 3000; k++) {
    fill(0, random(80, 100));
    noStroke();
    float t = radians(random(360));
    float nr = random(0, r);
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);
    ellipse(nx, ny, 2, 2);
  }
}

void circle19(float x, float y, float r) {
  noFill();
  float sw = 3;
  strokeWeight(sw-2);
  for (float i = 0; i <= r; i+=sw) {
    stroke(0);
    float start = random(-TWO_PI - PI, TWO_PI + PI);
    arc(x, y, 2*i, 2*i, start, start + PI + random(-PI/2, PI/2));
  }
}

void circle20(float x, float y, float r) {
  noFill();
  float sw = 8;
  strokeWeight(sw-2);
  for (float i = r - r/3; i <= r; i+=sw) {
    float start = random(-TWO_PI - PI, TWO_PI + PI);
    stroke(0, 50);
    stroke(0);
    arc(x, y, 2*i, 2*i, start, start + PI + random(-PI/2, PI/2));
  }

  sw = 5;
  strokeWeight(sw-1);
  for (float i = r - r/3; i <= r; i+=sw) {
    float start = random(-TWO_PI - PI, TWO_PI + PI);
    stroke(0, 50);
    stroke(0);
    arc(x, y, 2*i, 2*i, start, start + PI + random(-PI/2, PI/2));
  }

  sw = 2;
  strokeWeight(sw-1);
  for (float i = r - r/3; i <= r; i+=sw) {
    float start = random(-TWO_PI - PI, TWO_PI + PI);
    stroke(0, 50);
    stroke(0);
    arc(x, y, 2*i, 2*i, start, start + PI + random(-PI/2, PI/2));
  }
}

void circle21(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (int k = 0; k < 20; k++) {
    float start = random(-TWO_PI - PI, TWO_PI + PI);
    stroke(0, random(80, 90));
    noFill();
    float nr = random(1, (r-1)/2);
    float t = radians(random(360));
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);  
    arc(nx, ny, 2*(r-nr), 2*(r-nr), start, start + PI + random(-PI/2, PI/2));
  }
}

void circle22(float x, float y, float r) {
  noFill();
  stroke(0, 5);
  for (float i = 0; i <= int(2 * PI * r * 3); i++) {
    float rt1 = random(360);
    float rt2 = random(360);
    float rt3 = random(360);

    float r1 = random(r);
    float r2 = random(r);
    float r3 = random(r);

    noFill();
    stroke(0, 10);
    float cx1 = x + r1 * cos(radians(rt1));
    float cy1 = y + r1 * sin(radians(rt1));

    float cx2 = x + r2 * cos(radians(rt2));
    float cy2 = y + r2 * sin(radians(rt2));

    float cx3 = x + r3 * cos(radians(rt3));
    float cy3 = y + r3 * sin(radians(rt3));

    triangle(cx1, cy1, cx2, cy2, cx3, cy3);
  }
}

void circle23(float x, float y, float r) {
  noFill();
  stroke(0, 15);
  for (float i = 0; i <= int(2 * PI * r * 1); i++) {
    float rt1 = random(360);
    float rt2 = random(360);
    strokeWeight(1);
    float cx1 = x + r * cos(radians(rt1));
    float cy1 = y + r * sin(radians(rt1));

    float cx2 = x + r * cos(radians(rt2));
    float cy2 = y + r * sin(radians(rt2));
    line(cx1, cy1, cx2, cy2);
  }
}

void circle24(float x, float y, float r) {
  float rt = random(360);
  noFill();
  for (float i = 0; i <= 2*r; i+=map(i, 0, 2*r, 1, 5)) {
    strokeWeight(map(i, 0, 2*r, 1, 5));
    stroke(map(i, 0, 2*r, 0, 250), 80);
    float cx = x + (r - i/2) * cos(radians(rt));
    float cy = y + (r - i/2) * sin(radians(rt));
    ellipse(cx, cy, i, i);
  }
}

void circle25(float x, float y, float r) {
  float rt = random(360);
  noStroke();
  for (float i = 0; i <= 2*r; i+=map(i, 0, 2*r, 1, 3)) {
    //strokeWeight(map(i, r, 2*r, 1, 3));
    fill(0, map(i, 0, 2*r, 20, 1));
    float cx = x + (r - i/2) * cos(radians(rt));
    float cy = y + (r - i/2) * sin(radians(rt));
    ellipse(cx, cy, i, i);
  }
}

void circle26(float x, float y, float r) {
  float rt = radians(random(360));
  float sx1 = x + r * cos(rt);
  float sy1 = y + r * sin(rt);
  float sx2 = x + r * cos(rt + PI);
  float sy2 = y + r * sin(rt + PI);
  stroke(0);
  float step = 5;
  stroke(0);
  strokeWeight(3);
  line(sx1, sy1, sx2, sy2);
  for (float i = step; i < r; i+=step) {
    pushMatrix();
    translate(x, y);
    point(0, 0);
    rotate(rt);
    translate(0, -i);
    float l = sqrt(r * r - i * i);
    line(l, 0, -l, 0);
    translate(0, 2*i);
    line(l, 0, -l, 0);
    popMatrix();
  }
}

void dashed_line(float r, float l) {
  float k = -l;
  boolean blank = true;
  if (random(1) > 0.8)
    blank = false;
  while (k < l) {
    float nk;
    blank = !blank;
    if (!blank) {
      nk = k + random(r/10, r/2);
      if (nk > l)
        nk = l;
      line(k, 0, nk, 0);
    } else {
      nk = k + random(r/10, r/20);
    }
    k = nk;
  }
}

void circle27(float x, float y, float r) {
  float rt = radians(random(360));
  stroke(0);
  float step = 5;
  stroke(0);
  strokeWeight(3);
  //line(sx1, sy1, sx2, sy2);
  pushMatrix();
  translate(x, y);
  rotate(rt);
  dashed_line(r, r);
  popMatrix();
  for (float i = step; i < r; i+=step) {
    pushMatrix();
    translate(x, y);
    rotate(rt);
    translate(0, -i);
    float l = sqrt(r * r - i * i);
    dashed_line(r, l);
    translate(0, 2*i);
    dashed_line(r, l);
    popMatrix();
  }
}

void circle28(float x, float y, float r) {
  float rt = random(360);
  noStroke();
  for (float i = 0; i <= 2*r; i+=map(i, 0, 2*r, 1, 3)) {
    fill(0, map(i, 0, 2*r, 80, 10));
    ellipse(x, y, i, i);
  }
  fill(0);
  ellipse(x, y, 2*r, 2*r);
  for (int i = 0; i < 100; i++) {
    rt = radians(random(360));
    float sx = x + noise(rt, i) * r * cos(rt);
    float sy = y + noise(rt, i) * r * sin(rt);
    fill(255, random(40, 60));
    ellipse(sx, sy, 8, 8);
  }
  for (int i = 0; i < 300; i++) {
    rt = radians(random(360));
    float sx = x + noise(rt, i) * r * cos(rt);
    float sy = y + noise(rt, i) * r * sin(rt);
    fill(255, random(50, 80));
    ellipse(sx, sy, 5, 5);
  }
  for (int i = 0; i < 500; i++) {
    rt = radians(random(360));
    float sx = x + noise(rt, i) * r * cos(rt);
    float sy = y + noise(rt, i) * r * sin(rt);
    fill(255, random(80, 90));
    ellipse(sx, sy, 2, 2);
  }
  for (int i = 0; i < 1000; i++) {
    rt = radians(random(360));
    float sx = x + noise(rt, i) * r * cos(rt);
    float sy = y + noise(rt, i) * r * sin(rt);
    fill(255);
    ellipse(sx, sy, 1, 1);
  }
}

void circle29(float x, float y, float r) {
  float b = int(random(100, 200));
  float sw = 1;
  float hue = random(360);
  for (float i = 0; i < 360; i+=20) {
    stroke(0, 20);
    float sx = x;
    float sy = y;
    for (int j = 0; j < r; j += 1) {
      float nx = x + j * cos(radians(i)) + random(-r/10, r/10);
      float ny = y + j * sin(radians(i)) + random(-r/10, r/10);
      strokeWeight(map(j, 0, r, 0, r/10) + noise(sx, sy) * 10);
      line(sx, sy, nx, ny);
      sx = nx;
      sy = ny;
    }
  }
}

void circle30(float x, float y, float r) {
  float sw = 1;
  for (int k = 0; k < 50; k++) {
    float i = r;
    float t = random(360);
    //stroke(0);
    //strokeWeight(1);
    //ellipse(x, y, 2*r, 2*r);
    while (i >= sw/2) {
      fill(random(0, 100), 50);
      //strokeWeight(sw);
      noStroke();
      ellipse(x + (i - sw/2) * cos(radians(t)), y + (i - sw/2) * sin(radians(t)), sw, sw);
      i -= 0.1;
      t += 1;
    }
  }
}

void circle31(float x, float y, float r) {
  for (int k = 0; k < 50; k++) {
    float sw = random(1, 1);
    float i = r;
    float t = random(360);
    while (i >= sw/2) {
      fill(random(0, 50), 50);
      noStroke();
      ellipse(x + (i - sw/2) * cos(radians(t)), y + (i - sw/2) * sin(radians(t)), sw, sw);
      i -= random(0.1, 0.5);
      t += 10;
    }
  }
}

void circle32(float x, float y, float r) {
  float rt = radians(random(360));
  float sx1 = x + r * cos(rt);
  float sy1 = y + r * sin(rt);
  float sx2 = x + r * cos(rt + PI);
  float sy2 = y + r * sin(rt + PI);
  stroke(0);
  float step = 5;
  stroke(0);
  strokeWeight(3);
  line(sx1, sy1, sx2, sy2);
  for (float i = step; i < r; i+=step) {
    pushMatrix();
    translate(x, y);
    point(0, 0);
    rotate(rt);
    translate(0, -i);
    float l = sqrt(r * r - i * i);
    curve(l + random(-r, r), random(-r, r), 
      l, 0, 
      -l, 0, 
      -l - random(-r, r), random(-r, r));
    translate(0, 2*i);
    curve(l + random(-r, r), random(-r, r), 
      l, 0, 
      -l, 0, 
      -l - random(-r, r), random(-r, r));
    popMatrix();
  }
}

void circle33(float x, float y, float r) {
  float rt = radians(random(360));
  float sx1 = x + r * cos(rt);
  float sy1 = y + r * sin(rt);
  float sx2 = x + r * cos(rt + PI);
  float sy2 = y + r * sin(rt + PI);
  stroke(0);
  float step = 5;
  stroke(0);
  strokeWeight(3);
  line(sx1, sy1, sx2, sy2);
  noFill();
  stroke(0);
  strokeWeight(1);
  for (float i = step; i <= r; i+=step) {
    pushMatrix();
    translate(x, y);
    point(0, 0);
    rotate(rt);
    translate(0, -i);
    float l = sqrt(r * r - i * i);
    triangle(l, 0, -l, 0, 0, i);
    translate(0, 2*i);
    triangle(l, 0, -l, 0, 0, -i);
    popMatrix();
  }
}

void circle34(float x, float y, float r) {
  float rt = random(360);
  noFill();
  stroke(0, 50);

  float cx = x + r * cos(radians(rt));
  float cy = y + r * sin(radians(rt));
  for (float i = 0; i <= 360; i++) {
    float nx = x + r * cos(radians(i));
    float ny = y + r * sin(radians(i));
    line(cx, cy, nx, ny);
  }
}

void circle35(float x, float y, float r) {
  float rt = random(360);
  float rad = random(r/4, 3*r/4);
  fill(0);
  ellipse(x, y, 2*r, 2*r);
  noFill();
  stroke(255, 50);

  float cx = x + rad * cos(radians(rt));
  float cy = y + rad * sin(radians(rt));
  for (float i = 0; i <= 360; i++) {
    float nx = x + r * cos(radians(i));
    float ny = y + r * sin(radians(i));
    line(cx, cy, nx, ny);
  }
}

void circle36(float x, float y, float r) {
  float rt = random(360);
  float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 50);

  float cx = x + rad * cos(radians(rt));
  float cy = y + rad * sin(radians(rt));
  for (float i = 0; i <= 360; i+=random(1, 10)) {
    float nx = x + r * cos(radians(i));
    float ny = y + r * sin(radians(i));
    line(cx, cy, nx, ny);
  }
}

void circle37(float x, float y, float r) {
  //float rt = random(360);
  //float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 30);
  float step = 1;

  for (int k = 0; k < 100; k++) {
    float ox = x;
    float oy = y;
    float rt = random(360);
    for (float rad = step; rad < r; rad += step) {
      float nx = x + rad * cos(radians(rt));
      float ny = y + rad * sin(radians(rt));
      line(ox, oy, nx, ny);
      ox = nx;
      oy = ny;
      rt += random(-5, 5);
    }
  }
}

void circle38(float x, float y, float r) {
  //float rt = random(360);
  //float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 30);
  float step = 1;

  for (int k = 0; k < 10; k++) {
    float ox = x;
    float oy = y;
    float rt = random(360);
    for (float rad = step; rad < r; rad += step) {
      float nx = x + rad * cos(radians(rt));
      float ny = y + rad * sin(radians(rt));
      line(ox, oy, nx, ny);
      ox = nx;
      oy = ny;
      rt += random(-60, 60);
    }
  }
}

void circle39(float x, float y, float r) {
  //float rt = random(360);
  //float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 30);
  float step = 1;

  for (int k = 0; k < 4; k++) {
    float ox = x;
    float oy = y;
    float rt = random(360);
    for (float rad = step; rad < r; rad += step) {
      float nx = x + rad * cos(radians(rt));
      float ny = y + rad * sin(radians(rt));
      line(ox, oy, nx, ny);
      ox = nx;
      oy = ny;
      rt += random(-360, 360);
    }
  }
}

void circle40(float x, float y, float r) {
  //float rt = random(360);
  //float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 20);
  float step = 10;

  for (int k = 0; k < 1; k++) {
    float ox = x;
    float oy = y;
    float rt = random(360);
    float rad = 0;
    for (float n = 0; n < 10000; n++) {
      float nx = x + rad * cos(radians(rt));
      float ny = y + rad * sin(radians(rt));
      line(ox, oy, nx, ny);
      ox = nx;
      oy = ny;
      rt += random(-5, 5);
      if (rad >= r || rad < 0)
        step = -step;
      rad += step;
    }
  }
}

void circle41(float x, float y, float r) {
  //float rt = random(360);
  //float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 20);
  float step = 5;

  for (int k = 0; k < 1; k++) {
    float ox = x;
    float oy = y;
    float rt = random(360);
    float rad = 0;
    for (float n = 0; n < 10000; n++) {
      float nx = x + rad * cos(radians(rt));
      float ny = y + rad * sin(radians(rt));
      ellipse(nx, ny, r/100, r/100);
      ox = nx;
      oy = ny;
      rt += random(-5, 5);
      if (rad >= r || rad < 0)
        step = -step;
      rad += step;
    }
  }
}

void circle42(float x, float y, float r) {
  //float rt = random(360);
  //float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 90);
  float step = 3;

  for (int k = 0; k < 10; k++) {
    float ox = x;
    float oy = y;
    float rt = random(360);
    float rad = 0;
    for (float n = 0; n < 100; n++) {
      float nx = x + rad * cos(radians(rt));
      float ny = y + rad * sin(radians(rt));
      ellipse(nx, ny, map(rad, 0, r, r/100, r/200), map(rad, 0, r, r/100, r/200));
      ox = nx;
      oy = ny;
      rt += random(-10, 10);
      if (rad >= r || rad < 0)
        step = -step;
      rad += step;
    }
  }
}

void circle43(float x, float y, float r) {
  //float rt = random(360);
  //float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 90);
  float step = 0.01;

  for (int k = 0; k < 1; k++) {
    float ox = x;
    float oy = y;
    float rt = random(360);
    float rad = step;
    for (float n = 0; n < 100000; n++) {
      float nx = x + rad * cos(radians(rt));
      float ny = y + rad * sin(radians(rt));
      noStroke();
      fill(0, map(rad, 0, r, 0, 50));
      ellipse(nx, ny, map(rad, 0, r, r/100, r/50), map(rad, 0, r, r/100, r/50));
      ox = nx;
      oy = ny;
      rt += random(-10, 10);
      if (rad >= r || rad <= 0)
        step = -step;
      rad += step;
    }
  }
}

void circle44(float x, float y, float r) {
  //float rt = random(360);
  //float rad = random(r/4, 3*r/4);
  noFill();
  stroke(0, 90);
  float step = 1;

  for (int k = 0; k < 1; k++) {
    float ox = x;
    float oy = y;
    float rt = random(360);
    float rad = step;
    strokeCap(SQUARE);
    for (float n = 0; n < 2000; n++) {
      float nx = x + rad * cos(radians(rt));
      float ny = y + rad * sin(radians(rt));
      //noStroke();
      stroke(0, map(rad, 0, r, 0, 100));
      strokeWeight(map(rad, 0, r, r/200, r/20));
      line(ox, oy, nx, ny);

      //stroke(0, map(rad, 0, r, 100, 0));
      //strokeWeight(map(rad, 0, r, r/20, r/200));
      //line(ox, oy, nx, ny);
      ox = nx;
      oy = ny;
      rt += random(-20, 20);
      if (rad >= r || rad <= 0)
        step = -step;
      rad += step;
    }
  }
}

void circle45(float x, float y, float r) {
  noFill();
  for (int s = 5; s >= 1; s--) {
    stroke(0, map(s, 5, 1, 1, 5));
    int n = int(2 * PI * 10 * r/(2*s));
    if (s == 1) {
      stroke(0, 60);
      n = n/10;
    } else if (s == 2) {
      stroke(0, 20);
      n = n/5;
    } else if (s == 3) {
      stroke(0, 10);
      n = n/5;
    } else if (s == 4) {
      stroke(0, 5);
      n = n/5;
    } else if (s == 5) {
      stroke(0, 1);
    }
    for (float i = 0; i <= n; i++) {
      float rt1 = random(360);
      float rt2 = random(360);
      strokeWeight(s);
      float cx1 = x + r * cos(radians(rt1));
      float cy1 = y + r * sin(radians(rt1));

      float cx2 = x + r * cos(radians(rt2));
      float cy2 = y + r * sin(radians(rt2));
      line(cx1, cy1, cx2, cy2);
    }
  }
  circle44(x, y, r);
}

void circle46(float x, float y, float r) {
  circle38(x, y, r);

  //for (int i = 0; i < 3; i++)
  circle12(x, y, r);

  for (int i = 0; i < 5; i++)
    circle21(x, y, r);
}

void circle47(float x, float y, float r) {
  circle14(x, y, r);

  //for (int i = 0; i < 3; i++)
  circle42(x, y, r);
}

void circle48(float x, float y, float r) {
  noFill();
  stroke(0, 30);
  float step = 1;
  float rt1 = random(360);
  float rt2 = 180 + rt1;

  for (int k = 0; k < 10; k++) {
    float ox = x;
    float oy = y;
    float z = rt1;

    for (float rad = step; rad < r; rad += step) {
      float nx = x + rad * cos(radians(z));
      float ny = y + rad * sin(radians(z));
      strokeWeight(map(rad, 0, r, 1, r/20));
      stroke(0, map(rad, 0, r, 10, 100));
      line(ox, oy, nx, ny);
      ox = nx;
      oy = ny;
      z += random(-5, 5);
    }
  }

  for (int k = 0; k < 10; k++) {
    float z = rt2;
    float ox = x;
    float oy = y;

    for (float rad = step; rad < r; rad += step) {
      float nx = x + rad * cos(radians(z));
      float ny = y + rad * sin(radians(z));
      strokeWeight(map(rad, 0, r, 1, r/20));
      stroke(0, map(rad, 0, r, 10, 100));
      line(ox, oy, nx, ny);
      ox = nx;
      oy = ny;
      z += random(-5, 5);
    }
  }
}

void circle49(float x, float y, float r) {
  //strokeWeight(r/10);
  //stroke(0, 10);
  //
  //noFill();
  for (int i = 5; i < 40; i+=5) {
    stroke(0, i);
    //noStroke();
    noFill();
    strokeWeight(map(i, 5, 40, r/5, r/30));
    float step = 3;
    for (int k = 0; k < map(i, 5, 40, 3, 10); k++) {
      float ox = x;
      float oy = y;
      float rt = random(360);
      float rad = 0;
      for (float n = 0; n < 100; n++) {
        float nx = x + rad * cos(radians(rt));
        float ny = y + rad * sin(radians(rt));
        ellipse(nx, ny, map(rad, 0, r, r/100, r/200), map(rad, 0, r, r/100, r/200));
        ox = nx;
        oy = ny;
        rt += random(-10, 10);
        if (rad >= r || rad < 0)
          step = -step;
        rad += step;
      }
    }
  }
}

void circle50(float x, float y, float r) {
  noFill();
  stroke(0, 30);
  float step = 1;
  float rt1 = random(360);
  float rt2 = 180 + rt1;
  float rt = random(36); 
  int max = 5;
  for (int n = 0; n < max; rt += 360/max, n++) {
    for (int k = 0; k < 10; k++) {
      float ox = x;
      float oy = y;
      float z = rt;

      for (float rad = step; rad < r; rad += step) {
        float nx = x + rad * cos(radians(z));
        float ny = y + rad * sin(radians(z));
        strokeWeight(map(rad, 0, r, r/30, 1));
        stroke(0, map(rad, 0, r, 10, 100));
        line(ox, oy, nx, ny);
        ox = nx;
        oy = ny;
        float change = map(rad, 0, r, 1, 10); 
        z += random(-change, change);
      }
    }
  }
}

void circle51(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (int k = 0; k < 500; k++) {
    stroke(0, random(10, 30));
    noFill();
    //strokeWeight(random(1, 3));
    float nr = random(3*r/4, r);
    float t = radians(random(360));
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);
    float rr = random(r/4, r/2);
    ellipse(nx, ny, rr, rr);
  }
  fill(255);
  noStroke();
  ellipse(x, y, 2*r, 2*r);
}

void circle52(float x, float y, float r) {
  float step = 5;
  float oldx = x + r;
  float oldy = y;
  float l = 5;

  for (float i = 0; i <= 360; i += step) {
    float newx = x + r * cos(radians(i));
    float newy = y + r * sin(radians(i));
    pushMatrix();
    translate((oldx+newx)/2, (oldy + newy)/2);
    rotate(random(0, TWO_PI));
    line(-l, 0, l, 0);
    popMatrix();
    oldx = newx;
    oldy = newy;
  }
}

void circle53(float x, float y, float r) {
  float step = 5;
  float oldx = x + r;
  float oldy = y;
  float l = r/10;

  stroke(0, 30);
  for (int j = 0; j < r; j+=l) {
    for (float i = 0; i <= 360; i += step) {
      float newx = x + j * cos(radians(i));
      float newy = y + j * sin(radians(i));
      pushMatrix();
      translate((oldx+newx)/2, (oldy + newy)/2);
      rotate(random(0, TWO_PI));
      line(-l, 0, l, 0);
      popMatrix();
      oldx = newx;
      oldy = newy;
    }
  }
}

void circle54(float x, float y, float r) {
  float step = 1;
  float scale = 1;
  float snoise = random(10);
  float rnoise = snoise;
  float noisescale = 1;
  
  
  float oldx = x + r + noise(rnoise) * 50 - 25;;
  float oldy = y;
  strokeWeight(1);
  stroke(0);
  for (float i = step; i <= 360; i += step) {
    float nr = r + noise(rnoise) * 50 - 25;
    rnoise += noisescale;
    float newx = x + nr * cos(radians(i));
    float newy = y + nr * sin(radians(i));
    line(oldx, oldy, newx, newy);
    oldx = newx;
    oldy = newy;
  }
}

void circle55(float x, float y, float r) {
  float sw = 1;
  for (int k = 0; k < 10; k++) {
    float i = r;
    float t = random(360);
    //stroke(0);
    //strokeWeight(1);
    //ellipse(x, y, 2*r, 2*r);
    float rnoise = random(10);
    float nstep = 0.01;
    while (i >= sw/2) {
      fill(0, 40);
      noStroke();
      float nr = (i - sw/2) + noise(rnoise) * 30 - 15;
      rnoise += nstep;
      float nx = x + nr * cos(radians(t));
      float ny = y + nr * sin(radians(t));
      ellipse(nx, ny, sw, sw);
      i -= 0.05;
      t += 1;
    }
  }
}

void circle56(float x, float y, float r) {
  float sw = 1;
  for (int k = 0; k < 50; k++) {
    float i = r;
    float t = random(360);
    //stroke(0);
    //strokeWeight(1);
    //ellipse(x, y, 2*r, 2*r);
    float rnoise = random(10);
    float nstep = 0.01;
    while (i >= r- r/4) {
      fill(0, 80);
      noStroke();
      float nr = (i - sw/2) + noise(rnoise) * 30 - 15;
      rnoise += nstep;
      float nx = x + nr * cos(radians(t));
      float ny = y + nr * sin(radians(t));
      ellipse(nx, ny, sw, sw);
      i -= 0.05;
      t += 1;
    }
  }
}

void circle57(float x, float y, float r) {
  float sw = 1;
  for (int k = 0; k < 1; k++) {
    float i = r;
    float t = random(360);
    float rnoise = random(10);
    float nstep = -1;
    while (i >= sw/2) {
      noStroke();
      float nr = (i - sw/2) + noise(rnoise) * 30 - 15;
      fill(0);
      rnoise += nstep;
      float nx = x + nr * cos(radians(t));
      float ny = y + nr * sin(radians(t));
      ellipse(nx, ny, sw, sw);
      i -= 0.05;
      t += 1;
    }
  }
}

void circle58(float x, float y, float r) {
  float sw = 10;
  for (int k = 0; k < 10; k++) {
    float i = r;
    float t = random(360);
    float rnoise = random(10);
    float nstep = 0.01;
    while (i >= sw/2) {
      noStroke();
      float nr = (i - sw/2) + noise(rnoise) * 30 - 15;
      fill(0, 10);
      rnoise += nstep;
      float nx = x + nr * cos(radians(t));
      float ny = y + nr * sin(radians(t));
      ellipse(nx, ny, sw, sw);
      i -= 0.08;
      t += 1;
    }
  }
}

void _circle58(float x, float y, float r, int n, float sw, float step) {
  for (int k = 0; k < n; k++) {
    float i = r;
    float t = random(360);
    float rnoise = random(10);
    float nstep = step;
    while (i >= sw/2) {
      noStroke();
      float nr = (i - sw/2) + noise(rnoise) * 30 - 15;
      rnoise += nstep;
      float nx = x + nr * cos(radians(t));
      float ny = y + nr * sin(radians(t));
      ellipse(nx, ny, sw, sw);
      i -= 0.08;
      t += 1;
    }
  }
}

void circle59(float x, float y, float r) {
  float sw = 10; 
  int n = 10;
  for (int i = 0; sw > 1; i++) {
    fill(0, 10);
    _circle58(x, y, r, n, sw, 0.01);
    //fill(255, 10);
    //_circle58(x, y, r, sw);
    sw /= 2;
    n *= 2;
  }
  fill(255, 80);
  _circle58(x, y, r, 10, 1, 0.01);
}

void circle60(float x, float y, float r) {
  fill(0, 10);
  _circle58(x, y, r, 10, 20, 0.01);
  fill(255, 80);
  _circle58(x, y, r, 10, 1, -1);
}

void circle61(float x, float y, float r) {
  float step = 1;
  float scale = 1;
  float snoise = random(10);
  float rnoise = snoise;
  float noisescale = 0.001;
  float jump = 50;
  
  
  float oldx = x + r + noise(rnoise * sin(0)) * jump - jump / 2;
  float oldy = y;

  for (float i = step; i <= 360; i += step) {
    rnoise = snoise + noisescale * (i % 360);
    float nr = r + noise(rnoise * sin(i)) * jump - jump / 2;
    float newx = x + nr * cos(radians(i));
    float newy = y + nr * sin(radians(i));
    line(oldx, oldy, newx, newy);
    oldx = newx;
    oldy = newy;
  }
}

void circle62(float x, float y, float r) {
  float step = 10;
  float scale = 1;
  float snoise = random(10);
  float rnoise = snoise;
  float noisescale = 1;
  float jump = 100;
  
  
  float oldx = x + r + noise(rnoise) * 50 - 25;;
  float oldy = y;

  fill(0, 5);
  noStroke();
  for (int k = 0; k < 100; k++) {
  beginShape();
  vertex(oldx, oldy);
  for (float i = step; i <= 360; i += step) {
    float nr = r + noise(rnoise) * jump - jump/2;
    rnoise += noisescale;
    float newx = x + nr * cos(radians(i));
    float newy = y + nr * sin(radians(i));
    //line(oldx, oldy, newx, newy);
    vertex(newx, newy);
    oldx = newx;
    oldy = newy;
  }
  endShape();
  }
}

void circle63(float x, float y, float r) {
  float step = 10;
  float scale = 1;
  float snoise = random(10);
  float rnoise = snoise;
  float noisescale = 1;
  float jump = 100;
  
  
  float oldx = x + r + noise(rnoise) * 50 - 25;;
  float oldy = y;

  fill(0, 10);
  noStroke();
  for (int k = 0; k < 10; k++) {
  beginShape();
  vertex(oldx, oldy);
  for (float i = step; i <= 360; i += step) {
    if (random(1) < 0.1) {
      float nx = x + random(r/4, 3*r/4) * cos(radians(i));
      float ny = y + random(r/4, 3*r/4) * sin(radians(i));
      vertex(nx, ny);
    }
    float nr = r + noise(rnoise) * jump - jump/2;
    rnoise += noisescale;
    float newx = x + nr * cos(radians(i));
    float newy = y + nr * sin(radians(i));
    //line(oldx, oldy, newx, newy);
    vertex(newx, newy);
    oldx = newx;
    oldy = newy;
  }
  endShape();
  }
}

void circle64(float x, float y, float r) {
  noFill();
  stroke(0, 1);
  strokeWeight(0.5);
  for (float i = 0; i <= int(2 * PI * r * 100); i++) {
    float rt1 = random(360);
    float rt2 = random(360);
    //strokeWeight(random(5, 10));
    float cx1 = x + r * cos(radians(rt1));
    float cy1 = y + r * sin(radians(rt1));

    float cx2 = x + r * cos(radians(rt2));
    float cy2 = y + r * sin(radians(rt2));
    line(cx1, cy1, cx2, cy2);
  }
}

void circle65(float x, float y, float r) {
  noFill();
  float sw = 0.5;
  strokeWeight(sw);
  for (int k = 0; k < 10000; k++) {
    float start = random(-TWO_PI - PI, TWO_PI + PI);
    stroke(0, 1);
    noFill();
    float nr = random(1, (r-1)/2);
    float t = radians(random(360));
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);  
    arc(nx, ny, 2*(r-nr), 2*(r-nr), start, start + PI + random(-PI/2, PI/2));
  }
}

void circle66(float x, float y, float r) {
  float step = 10;
  float scale = 1;
  float snoise = random(10);
  float rnoise = snoise;
  float noisescale = 1;
  float jump = 100;
  
  
  float oldx = x + r + noise(rnoise) * 50 - 25;;
  float oldy = y;

  fill(0, 1);
  noStroke();
  for (int k = 0; k < 200; k++) {
  beginShape();
  vertex(oldx, oldy);
  for (float i = step; i <= 360; i += random(1, 10)) {
    if (random(1) < 0.1) {
      float nx = x + random(r/4, 3*r/4) * cos(radians(i));
      float ny = y + random(r/4, 3*r/4) * sin(radians(i));
      vertex(nx, ny);
    }
    float nr = r + noise(rnoise) * jump - jump/2;
    rnoise += noisescale;
    float newx = x + nr * cos(radians(i));
    float newy = y + nr * sin(radians(i));
    //line(oldx, oldy, newx, newy);
    vertex(newx, newy);
    oldx = newx;
    oldy = newy;
  }
  endShape();
  }
}

void circle67(float x, float y, float r) {
  circle54(x, y, r);
  circle57(x, y, r);
}

void circle68(float x, float y, float r) {
  for (int k = 0; k < 10; k++) {
    float rt = random(360);
    noFill();
    stroke(0, 10);
  
    float cx = x + r * cos(radians(rt));
    float cy = y + r * sin(radians(rt));
    for (float i = 0; i <= 360; i++) {
      float nx = x + r * cos(radians(i));
      float ny = y + r * sin(radians(i));
      line(cx, cy, nx, ny);
    }
  }
}

void circle69(float x, float y, float r) {
  for (int k = 0; k < 100; k++) {
    float rt = random(360);
    noFill();
    stroke(0, 1);
  
    float cx = x + r * cos(radians(rt));
    float cy = y + r * sin(radians(rt));
    for (float i = 0; i <= 360; i+=5) {
      float nx = x + r * cos(radians(i));
      float ny = y + r * sin(radians(i));
      line(cx, cy, nx, ny);
    }
  }
}

void circle70(float x, float y, float r) {
  fill(0);
  ellipse(x, y, 2*r, 2*r);
  for (int k = 0; k < 20; k++) {
    float rt = random(360);
    float rad = random(r/4, 3*r/4);
    noFill();
    stroke(255, 10);
  
    float cx = x + rad * cos(radians(rt));
    float cy = y + rad * sin(radians(rt));
    for (float i = 0; i <= 360; i++) {
      float nx = x + r * cos(radians(i));
      float ny = y + r * sin(radians(i));
      line(cx, cy, nx, ny);
    }
  }
}

void circle71(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (int k = 0; k < 500; k++) {
    stroke(0, 10);
    noFill();
    //strokeWeight(random(1, 3));
    float nr = random(r-r/2, r-1);
    float t = radians(random(360));
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);  
    ellipse(nx, ny, 2*(r-nr), 2*(r-nr));
  }
}

void circle72(float x, float y, float r) {
  noFill();
  float sw = 1;
  strokeWeight(sw);
  for (int k = 0; k < 1000; k++) {
    stroke(0, 5);
    noFill();
    //strokeWeight(random(1, 3));
    float nr = random(r-r/5, r-1);
    float t = radians(random(360));
    float nx = x + nr * cos(t);
    float ny = y + nr * sin(t);  
    ellipse(nx, ny, 2*(r-nr), 2*(r-nr));
  }
}

void circle73(float x, float y, float r) {
  float rt = radians(random(360));
  float sx1 = x + r * cos(rt);
  float sy1 = y + r * sin(rt);
  float sx2 = x + r * cos(rt + PI);
  float sy2 = y + r * sin(rt + PI);
  float step = 3;
  stroke(0, 50);
  strokeWeight(random(1, 5));
  //line(sx1, sy1, sx2, sy2);
  for (float i = step; i < r; i+=step) {
    strokeWeight(random(1, 5));
    pushMatrix();
    translate(x, y);
    //point(0, 0);
    rotate(rt);
    translate(0, -i);
    float l = sqrt(r * r - i * i);
    line(l, 0, -l, 0);
    translate(0, 2*i);
    line(l, 0, -l, 0);
    popMatrix();
  }
}

void circle74(float x, float y, float r) {
  float rt = radians(random(360));
  float sx1 = x + r * cos(rt);
  float sy1 = y + r * sin(rt);
  float sx2 = x + r * cos(rt + PI);
  float sy2 = y + r * sin(rt + PI);
  float step = 3;
  stroke(0, 1);
  strokeWeight(random(1, 5));
  //line(sx1, sy1, sx2, sy2);
  for (int k = 0; k < 20; k++) {
    for (float i = step; i < r; i+=step) {
      strokeWeight(random(1, 20));
      pushMatrix();
      translate(x, y);
      //point(0, 0);
      rotate(rt);
      translate(0, -i);
      float l = sqrt(r * r - i * i);
      line(l, 0, -l, 0);
      translate(0, 2*i);
      line(l, 0, -l, 0);
      popMatrix();
    }
  }
}

void circle75(float x, float y, float r) {
  float rt = radians(random(360));
  float sx1 = x + r * cos(rt);
  float sy1 = y + r * sin(rt);
  float sx2 = x + r * cos(rt + PI);
  float sy2 = y + r * sin(rt + PI);
  float step = 2;
  stroke(0, 50);
  strokeWeight(1);
  line(sx1, sy1, sx2, sy2);
  for (float i = step; i < r; i+=step) {
    pushMatrix();
    translate(x, y);
    //point(0, 0);
    rotate(rt);
    translate(0, -i);
    float l = sqrt(r * r - i * i);
    line(l, 0, -l, 0);
    translate(0, 2*i);
    line(l, 0, -l, 0);
    popMatrix();
  }
  rt += radians(90);
  sx1 = x + r * cos(rt);
  sy1 = y + r * sin(rt);
  sx2 = x + r * cos(rt + PI);
  sy2 = y + r * sin(rt + PI);
  step = 2;
  stroke(0, 50);
  strokeWeight(1);
  line(sx1, sy1, sx2, sy2);
  for (float i = step; i < r; i+=step) {
    pushMatrix();
    translate(x, y);
    //point(0, 0);
    rotate(rt);
    translate(0, -i);
    float l = sqrt(r * r - i * i);
    line(l, 0, -l, 0);
    translate(0, 2*i);
    line(l, 0, -l, 0);
    popMatrix();
  }
}

void redraw() {
  int n = 2;
  int margin = width/20;
  int spacing = (width - 2*margin) / n;
  int startx = margin + spacing/2;
  int d = spacing - 2*spacing/10;
 
  background(255);
  for (int i = 0; i < n; i++)
    for (int j = margin + spacing/2; j < height; j += height - 2 * (margin + spacing/2))
      circle75(startx + spacing * i, j, d/2);
}

void setup() {
  size(500, 500);
  background(255);
  redraw();
}

void draw() {}

void mouseClicked() {
  redraw();
}

void keyPressed() {
  if (key == 's')
    saveFrame();
}