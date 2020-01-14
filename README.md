# Memorable Password Generator

Simple bash script that concatenates _n_ random words from a file such as [wordsEn.txt](https://raw.githubusercontent.com/viniciusd-avila/memorable-password-generator/master/wordsEn.txt) (109582 English words provided by the Summer Institute of Linguistics).

![Inspired by xkcd.](https://imgs.xkcd.com/comics/password_strength.png)

From the terminal:
```
wget https://raw.githubusercontent.com/viniciusd-avila/memorable-password-generator/master/mempassgen.sh
wget https://raw.githubusercontent.com/viniciusd-avila/memorable-password-generator/master/wordsEn.txt
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

## Dictionary attacks

I've had this concern brought up to me, "Isn't one of the most common hacking techniques a dictionary attack, and wouldn't this password guideline be vulnerable to it?". This comes from a misundestanding of how dictionary attacks actually work. They don't simply use an English dictionary and generate all the possible different arrangements, that would leave you with quintillions of passwords to test against. What this tactic actually entails is using known common passwords such as "password123", which is not even in the English dictionary, to try and brute force your way into a system. This dictionary is comprised of passwords gathered from leaked databases, and they don't generate the possible combinations of those for the same reasons as stated just now, so stay away from common passwords.
