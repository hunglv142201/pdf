class ListUtils {
  static List<T> flattenList<T>(List<List<T>> list2d) {
    return list2d.expand((element) => element).toList();
  }
}
