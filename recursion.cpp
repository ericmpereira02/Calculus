#include <iostream>
#include <cstring>
#include <cstdlib>
using namespace std;

int main (int argc, char *args[]) {
  
  // if improper number of arguments are entered
  if (argc != 4) {
    cout << "recursion <value of x-naught> <value of a> <number of repetitions>" << endl;
    return 1;
  }

  // parsing arguments
  double xN = atof(args[1]);
  double a = atof(args[2]);
  int reps = atoi(args[3]);

  // computing x
  double x = xN;
  for (int ii = 1; ii <= reps; ii++) {
    xN = x;
    x = (a*xN)*(1-xN);
    cout << ii << ":\t" << x << endl;
  }
}
