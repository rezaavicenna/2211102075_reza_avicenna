void main() {
  int a = 12;
  int b = 8;
  
  print("Bilangan 1: $a");
  print("Bilangan 2: $b");
  print("FPB $a dan $b = ${fpb(a, b)}");
}

int fpb(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}