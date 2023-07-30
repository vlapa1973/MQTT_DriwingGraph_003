/***********************************************************
 *
 *  MQTT - отрисовка графика
 *  20230707 - 20230711
 *  v.011
 *
 ***********************************************************/

int w = 1900;  //  Размер окна по ширине
int h = 1000;  //  Размер окна по высоте

int setGraf = 2;
int setLine = 10;

String extensionFile = "txt";
String[] fileName = new String[0];
String filePath;
int rowCount = 0;
int chas = 0;
int min = 0;
int sec =0;
int chasOld = 0;
int minOld = 0;
int secOld = 0;
float data = 0;
float dataMin = 1000;
float dataMax = 0;
float[] dataData = new float[0];
float[] dataTime = new float[0];
float dataTimeOld = 0;
float dataDataOld = 0;
float a = 0;
float b = 0;


/***********************************************************/
//  настройки

void settings() {
  size(w, h);
  smooth(8);
}

/***********************************************************/
void setup() {

  surface.setLocation(10, 10);
  surface.setTitle("MQTT_DriwingGraph_003");
  surface.setResizable(true);
  textFont(createFont("Arial", 12, true));

  selectFolder("Select a folder to process:", "folderSelected");
  //selectInput("Select a file to process:", "fileSelected");
}

/***********************************************************/
void draw() {
  //if (flagWork) {
  //  if (millis() >= millisOld + 1000) {
  //    driwRect();
  //    loadFile();
  //    driwData();
  //  }
  //}
}

/***********************************************************/
