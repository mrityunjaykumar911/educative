## Findings

1. Passing string in constructor (w/o reference) makes a copy when passed as argument.
2. Best working code should make the argument string as reference in constructor (with reference) to reduce multiple copies.