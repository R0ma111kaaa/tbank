String pluralize(int number, String form1, String form2, String form5) {
  final int n = number.abs() % 100;
  if (n >= 11 && n <= 19) return form5;
  final int i = n % 10;
  switch (i) {
    case 1:
      return form1;
    case 2:
    case 3:
    case 4:
      return form2;
    default:
      return form5;
  }
}
