# Memorable Password Generator

Simple bash script that concatenates _n_ random words from a file such as [wordsEn.txt](http://www-01.sil.org/linguistics/wordlists/english/wordlist/wordsEn.txt) (109582 English words).

From the terminal:
```
wget https://github.com/viniciusd-avila/memorable-password-generator/blob/master/mempassgen.sh
wget http://www-01.sil.org/linguistics/wordlists/english/wordlist/wordsEn.txt 
chmod +x mempassgen.sh
bash mempassgen.sh -f wordsEn.txt -n <number of words> -v 
```

Example:
```
bash mempassgen.sh -f wordsEn.txt -v
trillionths
circulate
quarries
misinformation
trillionthscirculatequarriesmisinformation
```

Don't use that one of course!
