void setup(){
	noLoop();
	size(500,500);
}
void draw(){
	background(211,211,211);
	int dot_count = 0;
	for (int x = 25; x < width-25; x = x + 25) {
		for (int y = 25; y < height-25; y = y + 25){
			Die die_n = new Die(x,y);
			die_n.show();
			dot_count += die_n.dot;
		}
	}
	fill(0);
	text("Number of dots for 324 dice: " + dot_count, width/3, 490);
}
void mousePressed(){
	redraw();
}
class Die{ //models one single dice cube
	int mySize, myX, myY, dot, dia;
	Die(int x, int y) { // the class' constructor
		//variable initializations here
		myX = x;
		myY = y;
		mySize = 25;
		dia = mySize / 5;
		roll();
	}
	void roll(){
		dot = (int)(Math.random()*6)+1;
	}
	void show(){
		fill(245,230,200);
		stroke(0);
		rect(myX,myY,mySize,mySize);
		stroke(38,38,38);
		fill(255);
		if (dot == 1) {
			ellipse(myX+mySize/2,myY+mySize/2,dia,dia);
		}
		else if (dot == 2){
			ellipse(myX+mySize/4,myY+mySize/4,dia,dia);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,dia,dia);
		}
		else if (dot == 3) {
			ellipse(myX+mySize/4,myY+mySize/4,dia,dia);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,dia,dia);
			ellipse(myX+mySize/2,myY+mySize/2,dia,dia);
		}
		else if (dot == 4) {
			ellipse(myX+mySize/4,myY+mySize/4,dia,dia);
			ellipse(myX+mySize/4,myY+3*mySize/4,dia,dia);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,dia,dia);
			ellipse(myX+3*mySize/4,myY+mySize/4,dia,dia);

		}
		else if (dot == 5) {
			ellipse(myX+mySize/4,myY+mySize/4,dia,dia);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,dia,dia);
			ellipse(myX+mySize/2,myY+mySize/2,dia,dia);
			ellipse(myX+mySize/4,myY+3*mySize/4,dia,dia);
			ellipse(myX+3*mySize/4,myY+mySize/4,dia,dia);
		}
		else { 
			ellipse(myX+4*mySize/12,myY+mySize/4,dia,dia);
			ellipse(myX+4*mySize/12,myY+2*mySize/4,dia,dia);
			ellipse(myX+4*mySize/12,myY+3*mySize/4,dia,dia);

			ellipse(myX+9*mySize/12,myY+mySize/4,dia,dia);
			ellipse(myX+9*mySize/12,myY+2*mySize/4,dia,dia);
			ellipse(myX+9*mySize/12,myY+3*mySize/4,dia,dia);
		}
	}
}