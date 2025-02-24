void main() {
  List<List<int>> arr = List.generate(4, (i) => []);
  
  for (int i = 0; i < 4; i++) {
    arr[0].add(6 + (i * 6));
  }
  
  for (int i = 0; i < 5; i++) {
    arr[1].add(3 + (i * 2));
  }
  
  for (int i = 0; i < 6; i++) {
    int base = 4 + i;
    arr[2].add(base * base * base);
  }
  
  for (int i = 0; i < 7; i++) {
    arr[3].add(3 + (i * 7));
  }
  
  print("Isi List:");
  for (var row in arr) {
    print(row.join(" "));
  }
}