class UserAnsweredData {
  static List values = [];
  static void appendValues(String val) {
    values.add(val);
  }

  static String showValues(int no) {
    return values[no];
  }

  static void deleteData() {
    values.clear();
  }

  static int getLenght() {
    return values.length;
  }
}
