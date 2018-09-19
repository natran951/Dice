Die die1;
Die die2;
void setup(){
	noLoop();
	size(300,300);
	die1 = new Die(10,10);
	die2 = new Die(60,10);
}
void draw(){
	background(255);
	die1.roll();
	die2.roll();
	die1.show();
	die2.show();
}
void mousePressed(){
	redraw();
}
class Die{ //models one single dice cube
	int mySize, myX, myY, dot;
	Die(int x, int y) { // the class' constructor
		//variable initializations here
		myX = x;
		myY = y;
		mySize = 20;
	}
	void roll(){
		dot = 3;//(int)(Math.random()*6)+1;
	}
	void show(){
		fill(255);
		stroke(0);
		rect(myX,myY,mySize,mySize);
		if (dot == 1) {
			ellipse(myX+mySize/2,myY+mySize/2,5,5);
		}
		else if (dot == 2){
			ellipse(myX+mySize/4,myY+mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
		}
		else if (dot == 3) {

		}
		else if (dot == 4) {

		}
		else if (dot == 5) {

		}
		else{ // dot = 6
			
		}
	}
}