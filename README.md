# Memorable Password Generator

Simple bash script that concatenates _n_ random words from a file such as [wordsEn.txt](http://www-01.sil.org/linguistics/wordlists/english/wordlist/wordsEn.txt) (109582 English words).

![Inspired by xkcd.](https://imgs.xkcd.com/comics/password_strength.png)

From the terminal:
```
wget https://raw.githubusercontent.com/viniciusd-avila/memorable-password-generator/master/mempassgen.sh
wget http://www-01.sil.org/linguistics/wordlists/english/wordlist/wordsEn.txt 
chmod +x mempassgen.sh
bash mempassgen.sh -f wordsEn.txt -n 4 -v 
```

Example:
```
bash mempassgen.sh -f wordsEn.txt -v
commissioners  protesting  cancer  photography
commissionersprotestingcancerphotography
40 characters
56 bits of entropy
```

Don't use that one of course!
