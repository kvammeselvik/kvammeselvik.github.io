+++
title = "Læring med programmerbar kalkulator"
author = ["Aasmund Kvamme"]
date = 2025-12-09
tags = ["hp", "matematikk", "kalkulator"]
categories = ["skriving"]
draft = false
+++

## Læring med programmerbar kalkulator {#læring-med-programmerbar-kalkulator}

Dette er ein tjuvkopi av ein artikkel skrevet i 1979 for det amerikanske tidsskriftet (?) "HP Digest", 1979. Forfattar er [John J. Wavrik](https://prabook.com/web/john_joseph.wavrik/3537579).


### How programmable calculators can help kids learn. {#how-programmable-calculators-can-help-kids-learn-dot}

There are a variety of ways in which ble calculators can aid learning. Certainly on the high school or college level the ability to perform explicit computations, draw graphs, or apply numerical methods can make the subject of mathematics more understandable.

What may be more surprising is that learning experiences can be provided for relatively young students. Starting at about 4th grade, most students have enough background in numbers and number operations to begin learning more about mathematics and its applications. Probability and statistics, coordinate geometry, "real world" uses of mathematics, problem solving, and computer programming are but a few of the areas accessible to them.

An aid to intelligent learning.

Learning to solve problems is the principal reason most people study mathematics. Solving problems involves applying previously acquired information to new situations. Problem solving is divided into two stages: Figuring out what to do; then doing what you have figured out.

Thus in problems involving arithmetic one must first decide what computations to perform ... then perform them. The second stage frequently involves the results of rote learning. Stage one is the product of intelligent learning and is by far the more difficult of the two. Yet, upwards of 75 % of instructional time in elementary school mathematics is devoted to second stage skills. There is considerable evidence that even many adults have extreme difficulty with the first stage skills.

One of the most obvious benefits of calculators is that they can allow more instructional time to be spent on thinking and less on the process of computation. Moreover calculators permit the use of more realistic problems: textbook problems frequently are artificially constructed to make computation simple and are not typical of "real world" problems.

A unique tool for learning.

A _programmable_ calculator can provide learning experiences which would be hard to obtain in other ways. A well designed mathematical game for instance, reinforces concepts and skills. A good game can develop thinking ability. If it is interesting, it can motivate students to put in the time and effort that learning requires.

{{< figure src="/images/digest_5_learning_1.png" caption="<span class=\"figure-number\">Figure 1: </span>Caption text." width="800" >}}

There are many learning games that can used with programmable calculators. I've used some "Star-Trek" variants, for example, to teach geometry of multi-dimensional spaces, angle measurement, and trigonometry. To give a better indication of what is meant by leaming games, here is a game written for the HP-33E which provides experience with logical reasoning place value, and multi-digit addition.

```python
01 RCL 7
02 g pi
03 +
05 5
06 f y^x
07 STO 7
08 EEX
09 2
10 *
11 g INT
12 STO 0
13 f FIX 0
14 RCL 0
15 1
16 0
17 /
18 ENTER
19 g INT
20 STO 1
21 -
22 1
23 0
24 *
25 RCL 1
26 +
27 R/S
28 STO 2
29 STO + 0
30 RCL 0
31 9
32 9
33 f x>y
34 GTO 13
35 f FIX 9
36 f x=y
37 GTO 00
38 RCL 2
39 STO - 0
40 CLX
41 GTO 27
```

To start the program, press R/S and the calculator will make up a secret number between 0 and 99. It does not tell you the number, but it tells you the sum of its digits. You then put in a number, press R/S, and the calculator adds this to the secret number to produce a new secret number. It provides you with the sum of the digits of the new number.

The object of the game is to get the secret number up to 99 in as few moves as possible. [For experts: it can be done in no more than 5 moves!] When you succeed, the calculator shows 99.00000000. Press R/S to play another game. If at any point you should ask the calculator to add in something which would make the secret number bigger than 99, the calculator _does not add it_ and shows 0.00000000.

To get a secret number up to 99 as quickly as possible requires not only logic but an understanding of addition and the meaning of positional notation for numbers. Thus if the sum of digits of the original number is 4, the secret number could be 4, 13, 22, 31, or 40. If, however, you add 8 and the new sum of digits is 12, some of these possibilities are eliminated. There is a strategy, but it's not as easy as it might seem at first glance.

Simulation programming.

One of the most exciting educational uses for programmable calculators is simulation. There is nothing that makes probability and statistics so clear as performing expenments.

Unfortunately, few people have the patience to flip coins, throw dice, conduct surveys, etc., to the extent needed for the underlying concepts to emerge clearly.

Very simple programs based on random number generation routines can be used to perform such experiments. Thus students can see what happens as a coin is flipped many times, the effect of sample size on the accuracy of a poll, etc.

The whole business of confidence intervals, level of significance, etc., falls into place after one has had a chance to actually see what happens. Statistics is an important application area for mathematics. Students who have had a chance to experiment and make observations will have a good foundation on which later systematic study can build.

In an entirely different direction, we have used simulation to teach some fundamental ideas of economics to 4th-6th grade students. One program (inspired by some computer programs produced by the Minnesota Educational Computing Consortium) explores the impact of selling price on profit. Besides the introduction to economics, the simulation exercises and introduces some important mathematical ideas. Students graphed profit as a function of selling price. In this way they reinforced their understanding of the idea of a function, saw the power of graphing and dealt with their first maximization problem. They were easily able to see the relationship between the slope of the graph and the location of the maximum.

When these students eventually study Calculus it will probably make a deal of sense to them. There is a lot to be learned from a calculator and a pad of graph paper!

Programming as a learning experience.

The problem solving activity par excellence, however, is programming itself. Calculator programming can provide students with opportunities to exercise creativity, imagnination, reasoning skill, etc. It also provides both "the thrill of victory and the agony of defeat" ... which are necessary for the development of the personality characteristics of a successful problem solver.

An additional advantage is that it can be "individualized": it provides challenges at all ability levels and in a diversity of interest areas. There are some 4th graders for whom writing a program to make the calculator "count" is a challenge. In one recent group, however, a pair of 4th graders decided to write their own "perpetual calendar" program. They researched  calendars and astronomy and then solved some fairly technical problems to write their program. This enormous range of ability was accommodated by the same instrument: an HP-25 programmable calculator.

Owners of HP programmables might be surprised at how readily children can learn to use the machines. RPN offers a distinct advantage: it has a simplicity and reasonableness that children can grasp. All of the thought and care that go into the design and manufacture of Hewlett-Packard calculators become doubly important when the user is a child. The features that make HP calculators "the choice of professionals" also make them ideal for children. Here are some examples:

-   The calculator does not store operations (in RUN mode), only numbers. There are no pending operations.
-   Intermediate answers are displayed.
-   Collections of keystrokes that you regard as a single instruction become a single step in a program.
-   The way in which operations are performed is well-conceived. (It is easier for a child to understand STO / 1 than 2nd INV PROD 1.)
-   Instruction manuals are well writen (and the ideas can be transmitted to children).
-   The calculators are rugged.

RPN was chosen for its efficiency for adult users but it is (incidentally) also less complicated than algebraic logic ... which makes it useful for children. The RPN system does not require familiarity with hierarchy rules, inverse functions, etc., which demand more mathematical background than elementary school students possess. It is quite possible for 9-year-olds to learn all there really is to know about the operation of the calculator. They may not know how to use certain operations (like \\(e^x)\\), for instance) ... but they will know what happens in the stack as these operations are performed.

Suggestions for teaching.

Let me give, in outline form, some suggestions for teaching a child to use a programmable calculator.

1.  Instruction booklets serve two purposes. They are both teaching instruments and reference manuals. To some extent these purposes work against each other. Since the instruction booklet functions as a reference manual, there is much more information at some places than a young beginner can deal with. On the other hand, key ideas (how the stack operates, how to use the ENTER key, etc.) are explained well. So skip around and teach what the child seems ready to learn.

2.  The best learning occurs when the child works with the calculator, trying things and making observations. Some information is best provided when a question is asked or an appropriate situation arises (e.g. explain scientific notation when the child first performs a calculation that overflows).

3.  Understanding what every key does on a scientific calculator would be a good course in mathematics from 4th grade to college. Resist the temptation to teach this 13-year course in a hour.

4.  Start with how to perform basic arithmetic. The key observation is that THE CALCULATOR PERFORMS OPERATIONS AS SOON AS THE OPERATION KEY IS PRESSED. Stress the analogy with pencil and paper computation. A common mistake is: 3 ENTER 5 ENTER +. The student thinks "ENTER" means "write it down." A better name for the ENTER key at this stage would be the SEPARATE key, or the OLD DIGITS/ NEW DIGITS key, or the NEXT NUMBER key.

5.  Next do some simple programs. Notice that these programs show the use of branching commands to make loops and the use of tests to exit from loops (two of the main ideas of programming).

6.  Talk about the stack. The stack consists of four boxes that hold numbers. Numbers move in these as keys are pressed. The rules are simple to grasp and observations can be made using the \\(R\downarrow\\) and \\(x\leftrightarrows y\\) keys. It is worthwhile to make charts showing what happens in the stack as simple calculations are performed. The meaning of "two number" tests \\(x=y\\), etc.) can now be explained.

7.  Explain storage and storage operationa. The storage registers are a collection of numbered boxes. The storage operations move numbers between boxes and stack. I once tried calling them "mailboxes" but found that this leads to a bad image: when a letter is mailed, the sender no longer has it. When, however, a number is stored a _copy_ is put in storage and the original stays in the stack.

8.  Explain other operations (like INT and FRAC) as the need for them arises.

9.  When writing programs, be patient. If a program doesn't work as expected try to figure out why. Most programmers learn more from their failures than from their successes.

10. Programs involving random numbers are especially appealing and useful to children. Random generators are used in many game programs.

11. The main idea is to build up mental images of what is going on as the calculator runs. A lot can be learned by thoughtful observation.

12. At some stage a programmer should be encouraged to document and systematically file programs.

13. It is important that the child have access to the calculator when the need or desire arises. If you are using your machine heavily, and your child does develop an interest, give serious thought to getting him or her a machine. (P.S. The HP-33E seems to be a good machine for this purpose.)

14. It is perfectly normal for some children to get so absorbed at times that eating, brushing teeth, sleeping, etc., cause problems.

15. Controlling a sophisticated machine is a powerful experience for a child. It can be great fun and rewarding if the child can proceed at his or her own pace. The programmable calculator offers a lifetime of learning experiences ... don't force the pace!

16. Some families have found that working together on programs is a good shared experience.

17. The optimum situation for a child to learn programming is:

A. The child has unlimited access to the calculator.
B. An adult who knows programming is available for consultation.
C. Appropriate written materials are available.

Dr. John J. Wavrick is an associate professor of mathematics at the University of California at San Diego. He has published numerous research articles as well as articles in _Exponent_ and _Calculators/Computers_ where he is an editorial advisor. A frequent lecturer in math and education, he has also been a consultant to San Diego city schools in the "Mentally Gifted Minor" program. Wavrick has degrees in mathematics from Johns Hopkins University and took his Ph D. from Stanford University.
