// An enum is a special type that represents a fixed number of constant values.
//An enum is declared using the keyword enum followed by the enum’s name.
enum days { Sunday, Monday, Tuesday, Wednesday, Friday, Saturday, Thursday }

void main() {
  var today = days.Friday;
  switch (today) {
    case days.Sunday:
      print("Today is Sunday.");
      break;
    case days.Monday:
      print("Today is Monday.");
      break;
    case days.Tuesday:
      print("Today is Tuesday.");
      break;
    case days.Wednesday:
      print("Today is Wednesday.");
      break;

    case days.Friday:
      print("Today is Friday.");
      break;
    case days.Saturday:
      print("Today is Saturday.");
      break;
    case days.Thursday:
      print("Today is Thursday.");
      break;
  }
}
