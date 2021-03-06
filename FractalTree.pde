private double fractionLength = .8; 
private int smallestBranch = 60; 
private double branchAngle1 = Math.random();
private double branchAngle2 = Math.random(); 

public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320, 380, 100, 3*Math.PI/2);
	//will add later 
} 
public void keyTyped(){
	if(key == 'w'){
		smallestBranch-=.2;
	}
	if(key == 'a'){
		branchAngle1+=.2;
	}
	if(key == 'd'){
		branchAngle1-=.2;
	}
	redraw();
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle+branchAngle1;
	double angle2 = angle-branchAngle2; 
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	branchLength*=fractionLength;

	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);


	if(branchLength>smallestBranch){
		drawBranches(endX1, endY1, branchLength-3, angle1);
		drawBranches(endX2, endY2, branchLength-5, angle2);
		
	}

/*Declare four local variables `endX1` `endY1` `endX2` `endY2`. We can calculate the endpoints with code like:

		`int endX1 = (int)(branchLength*Math.cos(angle1) + x);`  
		`int endY1 = (int)(branchLength*Math.sin(angle1) + y);`  
	* Now, draw two lines, both starting from (`x`,`y`) but ending at the two different end points you just calculated.  */

	//your code here    
} 
