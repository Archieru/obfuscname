# obfuscname

As an input takes a seed (old name?)

As an output produces a new name (always the same for a given seed)

``obfuscname $ curl localhost:3000/JohnDoe
  {"seed":"JohnDoe","name":"Gage Jacinto"}``

If no input given - takes current time as a seed

``obfuscname $ curl localhost:3000/
  {"seed":"2018-02-12T15:45:00+03:00","name":"Eleanore Liliana"}``
