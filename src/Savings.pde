class Savings{
  String saving_name;
  String[] properties, values;
  
  Savings(String saving_name_arg, String[] properties_arg, String[] values_arg){
    saving_name = saving_name_arg;
    properties = properties_arg;
    values = values_arg;
  }
  
  private void getPropertiesFromFile(){
    String[] lines = loadStrings(saving_name); // loading file
    
    for (int i = 0 ; i < lines.length; i++) {
      String[] line = split(lines[i], "="); // finding property and value in the file from current line
      for (int k = 0; k < properties.length; k++){
        if(line[0].equals(properties[k])) values[k] = line[1]; // if property is found in the current instance of class that is the same as property in the file, we change instance's value to the one from the file 
      }
    }
  }
  
  private void setPropertiesToFile(){
    String to_save = ""; // final string that will be saved in the file
    for (int i = 0 ; i < properties.length; i++) {
      String line = properties[i] + "=" + values[i] + " "; // we place "property=value " one after another to be able to split it
      to_save += line;
    }
    saveStrings(saving_name, split(to_save, " ")); // setting file's contents to our splitted string 
  }
  
  public void setup(){
    File file = new File(sketchPath(saving_name));
    delay(100);
    if (file.exists()){
      println("File exists! Congrats!");
      getPropertiesFromFile();
    }
    else setPropertiesToFile();
  }
  
  public boolean setProperty (String property_name, String value){
    for (int i = 0 ; i < properties.length; i++) {
      if(properties[i].equals(property_name)){ // looking for this property in our instance
        values[i] = value; // we change instance's value
        setPropertiesToFile(); // and apply changes to a file
        return true;
      }
    }
    return false;
  }
  
  public String getProperty (String property_name){
    getPropertiesFromFile();
    for (int i = 0 ; i < properties.length; i++) {
      if(property_name.equals(properties[i])) return values[i];
    }
    return "";
  }
}
