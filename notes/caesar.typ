= Caesar Chiffre

*All exercise tips in the lecture are given in Caesar-13 encryption!*

#table(
  columns: 27,
  "0", "A", "B", "C", "D", "E", "F", "G", "H",
  "I", "J", "K", "L", "M", "N", "O", "P", "Q",
  "R", "S", "T", "U", "V", "W", "X", "Y", "Z",

  "1", "B", "C", "D", "E", "F", "G", "H", "I",
  "J", "K", "L", "M", "N", "O", "P", "Q", "R",
  "S", "T", "U", "V", "W", "X", "Y", "Z", "A",

  "2", "C", "D", "E", "F", "G", "H", "I", "J",
  "K", "L", "M", "N", "O", "P", "Q", "R", "S",
  "T", "U", "V", "W", "X", "Y", "Z", "A", "B",

  "3", "D", "E", "F", "G", "H", "I", "J", "K",
  "L", "M", "N", "O", "P", "Q", "R", "S", "T",
  "U", "V", "W", "X", "Y", "Z", "A", "B", "C",

  "...", [], [], [], [], [], [], [], [], [], [], [], [],
  [], [], [], [], [], [], [], [], [], [], [], [], [], [],

  "13", "N", "O", "P", "Q", "R", "S", "T", "U",
  "V", "W", "X", "Y", "Z", "A", "B", "C", "D",
  "E", "F", "G", "H", "I", "J", "K", "L", "M",

  "...", [], [], [], [], [], [], [], [], [], [], [], [],
  [], [], [], [], [], [], [], [], [], [], [], [], [], [],

  "25", "Z", "A", "B", "C", "D", "E", "F", "G",
  "H", "I", "J", "K", "L", "M", "N", "O", "P",
  "Q", "R", "S", "T", "U", "V", "W", "X", "Y",

  "26", "A", "B", "C", "D", "E", "F", "G", "H",
  "I", "J", "K", "L", "M", "N", "O", "P", "Q",
  "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
)

== Cracking Tips

For brute force, rotate each letter until the beginning of the message makes sense. Example:

0. O*\A*\YNAPIAOOWCA
1. P*\B*\ZOB...
2. Q*\C*\APC...
3. R*\D*\BQD...
4. S*\E*\CRETMESSAGE

Or do a frequency analysis of the letters, counting how many time each letter shows up. The most common letter will probably be the "E".
