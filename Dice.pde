void setup(){
	noLoop();
	size(500,500);
}
void draw(){
	background(255);
	for (int x = 10; x < width; x = x + 50) {
		for (int y = 10; y < height; y = y + 50){
			Die die_n = new Die(x,y);
			die_n.show();
		}
	}
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
		roll();
	}
	void roll(){
		dot = (int)(Math.random()*6)+1;
	}
	void show(){
		fill(255);
		stroke(0);
		rect(myX,myY,mySize,mySize);
		//fill(0);
		if (dot == 1) {
			ellipse(myX+mySize/2,myY+mySize/2,5,5);
		}
		else if (dot == 2){
			ellipse(myX+mySize/4,myY+mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
		}
		else if (dot == 3) {
			ellipse(myX+mySize/4,myY+mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
			ellipse(myX+mySize/2,myY+mySize/2,5,5);
		}
		else if (dot == 4) {
			ellipse(myX+mySize/4,myY+mySize/4,5,5);
			ellipse(myX+mySize/4,myY+3*mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+mySize/4,5,5);

		}
		else if (dot == 5) {
			ellipse(myX+mySize/4,myY+mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
			ellipse(myX+mySize/2,myY+mySize/2,5,5);
			ellipse(myX+mySize/4,myY+3*mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+mySize/4,5,5);
		}
		else { 
			ellipse(myX+mySize/4,myY+mySize/4,5,5);
			ellipse(myX+mySize/4,myY+2*mySize/4,5,5);
			ellipse(myX+mySize/4,myY+3*mySize/4,5,5);

			ellipse(myX+3*mySize/4,myY+mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+2*mySize/4,5,5);
			ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
		}
	}
}