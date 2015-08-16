import std.stdio, std.getopt;

void main(string[] args) {
  int sign       = 1;
  double baseVal = 2.0;
  double pi      = 3.0;

  ulong expansionDegree = 500_000;

  args.getopt("exp", &expansionDegree);

  for (; expansionDegree > 0; expansionDegree--, sign *= -1, baseVal += 2)
    pi += sign * (4.0 / (baseVal ^^ 3 + 3 * baseVal ^^ 2 + 2 * baseVal));
  writefln("%1.15f", pi);
}
