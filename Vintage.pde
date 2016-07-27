PImage img = null;
String myFilePath = "";

int wh = 16;
int he = 38;

void setup() {
  frame.setResizable(true);
  selectInput("Select a file to process:", "fileSelected");
}

void draw(){
  if(myFilePath != "") img = loadImage(myFilePath);
  if(img != null){
    PImage img2 = img;
    frame.setSize(img.width/3+wh,2*(img.height/3)+he);
    img2.resize(img2.width/3,img2.height/3);
    
    image(img2,0,0);
    image(img2,0,img2.height);
    
    fill(0,12,66,40);
    rect(0,img.height,img.width,img.height);    
    fill(208,164,95,50);
    rect(0,img.height,img.width,img.height);
    
    textSize(16);
    fill(0,102,153);
    text("Original",1,15);
    text("Vintage",1,img2.height+15);
  }
}

void fileSelected(File selection){
  if(selection == null) println("Window was closed or the user hit cancel.");
  else myFilePath = selection.getAbsolutePath();
}
