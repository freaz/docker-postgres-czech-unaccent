CREATE TEXT SEARCH DICTIONARY cspell
   (template=ispell, dictfile = czech, afffile=czech, stopwords=czech);
CREATE TEXT SEARCH CONFIGURATION cs (copy=english);
ALTER TEXT SEARCH CONFIGURATION cs
  ALTER MAPPING FOR word, asciiword WITH cspell, simple;
