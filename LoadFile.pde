/***********************************************************/
//  выбор папки + создание массива названий файлов

void folderSelected(File selection) {
  if (selection == null) {
    println("**************************");
  } else {
    File folder = new File(selection.getAbsolutePath());
    filePath = selection.getAbsolutePath();
    println(filePath);
    for (File file : folder.listFiles()) {
      String temp = file.getName();
      String temp2 = temp.substring(temp.indexOf('.') + 1, temp.length());
      if (temp2.equals(extensionFile)) {
        fileName = append(fileName, temp);
        loadFile();
      } else {
        println("*/*/*/*/*/*/*/*/*/*/*/*/*");
      }
    }
    //for (int i = 0; i < fileName.length; ++i) {
    //  println(fileName[i]);
    //}
    //println("-------------");
  }
}

/***********************************************************/
//  загрузка новых данных из файла

void loadFile() {
  for (int j = 0; j < fileName.length; ++j) {
    String[] lines = loadStrings(filePath + '/' + fileName[j]);
    if (rowCount == lines.length) {
      return;
    } else {
      println();
      for (int i = rowCount; i < lines.length; ++i) {
        sec = int(lines[i].substring(6, 8));
        min = int(lines[i].substring(3, 5));
        chas = int(lines[i].substring(0, 2));

        data = float(lines[i].substring(9, lines[i].length()));

        if (dataMin > data) {
          dataMin = data;
        }
        if (dataMax < data) {
          dataMax = data;
        }

        dataData = append(dataData, data);
        dataTime = append(dataTime, chas * 3600 + min * 60 + sec);

        if (a > h / setGraf || b > h / setGraf) {
          a = h / setGraf;
          b = a;
        }
      }
      rowCount = lines.length;
    }
    println(dataData.length + ": " +  dataMax + " - " + dataMin + " = " + (dataMax - dataMin));
  }
}

/***********************************************************/
