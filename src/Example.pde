/**
  This is an example of using Savings class. As an example, we will create simple settings.
*/

String SETTINGS = "settings.txt";
String FRAMERATE = "30";
String VOLUME = "5";

String settings_properties = "framerate volume";
String settings_values = FRAMERATE + " " + VOLUME;

Savings settings;

void gatherSettings(){
  settings = new Savings(SETTINGS, split(settings_properties, " "), split(settings_values, " ")); // we are creating an instance of our class
  settings.setup(); // we are creating a file that will store our settings and filling it with the defaults, that were set in our instance of class (if it is our 1-st launch) or we just gather information from our file and set it to our instance.
  
  settings.setProperty("framerate", "60"); // as an example, we are setting our framerate to 60 fps.
  
  FRAMERATE = settings.getProperty("framerate"); // changing our global variables
  VOLUME = settings.getProperty("volume");
  
  println("fmr", FRAMERATE); 
  println("vlm", VOLUME);
}

void setup() {
  gatherSettings();
  size(640, 360);
  background(255, 204, 0);
  frameRate(float(FRAMERATE));
}

void draw() {
  // nothing to draw
}
