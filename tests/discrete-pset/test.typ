#import "/src/lib.typ" as stem-pset: *

#let class = "math 347h"
#let assignment = "Homework 4"
#let author = "Samyak Jain"
#let logo = image("/tests/assets/uofi.png", height: 25pt)
#let instructor = "Prof. Fernandough"
#let semester = "Fall 2025"
#let due-time = "September 25, 2025"

#show: homework.with(
  class: class,
  assignment: assignment,
  author: author,
  logo: logo,
  instructor: instructor,
  semester: semester,
  due-time: due-time,
  paper-size: "us-letter",
  accent-color: rgb("#1c2b39"),
)

#set enum(numbering: "a)")

#q(title: "Problem 1")[
  Prove or disprove the following conjectures:

  1. $exists x in RR \\ QQ "such that" x^2 in QQ.$

  2. $forall x in RR \\ QQ "we have" x^2 in QQ.$
]

1. #b() Choose $x = sqrt(2)$. $sqrt(2)$ is irrational by a previous proof. Then $x^2 = (sqrt(2))^2 = 2$ which is in $QQ$. So there exists an $x in RR \\ QQ$ such that $x^2 in QQ$.

#Q()

2. #b() We show the negation holds. We take the negation. 

$ &not (forall x in RR \\ QQ "we have" x^2 in QQ) $
$ equiv &exists x in RR \\ QQ "such that" x^2 in RR \\ QQ $

Choose $x = sqrt(sqrt(2))$. We will show that $sqrt(sqrt(2))$ is irrational. Suppose, for the sake of contradiction, that $sqrt(sqrt(2))$ is rational. Then there exists $p, q in ZZ$ with $q!= 0$ such that $sqrt(sqrt(2)) = p/q$. Squaring both sides, we have $sqrt(2) = p^2/q^2$. It follows that $p^2, q^2 in ZZ$ because the integers are closed under multiplication. Then $sqrt(2)$ is equal to an integer divided by an integer, which is a rational number: a contradiction. This means that $sqrt(sqrt(2))$ must be irrational. We proceed with the main argument. We calculate $x^2 = sqrt(2)$, which is irrational. Thus the negation is true and the original statement is false.

#Q()

#pagebreak()

#q(title: "Problem 2")[
  
  For which values of $x > 0$ is the following claim true? $ [0, x] subset.eq [0, x^2] $

  Prove your assertion.
]

#b() There are two cases: $0 < x < 1$ and $x >= 1$. Consider the case where $0 < x < 1$. Let $x in (0, 1)$ be arbitrary. We calculate:

$ 0 < x < 1 \
-1/2 < x - 1/2 < 1/2 \
(x - 1/2)^2 < 1/4 \
x^2 - x + 1/4 < 1/4 \
x^2 - x < 0 \
x^2 < x $

So when $0 < x < 1$, we have $x^2 < x$. Then $[0, x] subset.eq.not [0, x^2]$, since the set $[0, x]$ has a greater upper bound for all $0 < x < 1$. So the claim is false for $0 < x < 1$.

Now consider $x >= 1$. Let $x in [1, infinity)$ be arbitrary. We calculate:

$ x >= 1 \
x - 1/2 >= 1/2 \
(x - 1/2)^2 >= 1/4 \
x^2 - x + 1/4 >= 1/4 \
x^2 - x >= 0 \
x^2 >= x $

So when $x >= 1$, we have $x^2 >= x$. Then it must be true that $[0, x] subset.eq [0, x^2]$, since the set $[0, x^2]$ has a greater or equal upper bound for all $x >= 1$. So the claim is true for $x >= 1$.

#Q()

#pagebreak()

#q(title: "Problem 3")[
  Practice your proof skills by giving formal proofs of the following results from Theorems 4.8 and 4.9. With practice you should be able to prove all of parts of these theorems (and of Theorem 4.10) these _without_ looking at the arguments in the notes!

  1. $emptyset inter A = emptyset$.

  2. $A inter (B inter C) = (A inter B) inter C$.

  3. $(A^complement)^complement = A$.

  4. $A subset.eq B <==> B^complement subset.eq A^complement$.
]

1. #b() Suppose $U$ is a universal set and $A subset.eq U$ is an arbitrary set. By the definition of intersection, 

$ emptyset inter A = {x in U : x in emptyset "and" x in A} $

However, $emptyset$ has no members, so for all $x in U$, $x in.not emptyset$. Then there exists no $x in emptyset$ and $x in A$, and therefore, $abs(emptyset inter A) = 0$. Recall that $abs(emptyset) = 0$. Then $emptyset inter A = emptyset$.

#Q()

2. #b() Suppose $U$ is a universal set and $A$, $B$, $C subset.eq U$ are arbitrary sets. By the definition of intersection,

$ B inter C = {x in U : x in B "and" x in C} $

Again by the definition of intersection, we have

$ A inter(B inter C) = {x in U : x in A "and" (x in B "and" x in C)} $

Which is the same as

$ A inter(B inter C) = {x in U : x in A "and" x in B "and" x in C} $

and equivalently, 

$ A inter(B inter C) = {x in U : (x in A "and" x in B) "and" x in C} $

The right side, by the definition of intersection, is $(A inter B) inter C$. So we have $A inter (B inter C) = (A inter B) inter C$.

#Q()

3. #b() Suppose $U$ is a universal set and $A subset.eq U$ is an arbitrary set. Then, by the definition of the complement,

$ A^complement = {x in U : x in.not A} $

Again by the definition of the complement,

$ (A^complement)^complement = {x in U : x in.not A^complement} $

However $x in.not A^complement equiv x in A$, so we have

$ (A^complement)^complement = {x in U : x in A} = A $

Therefore, $(A^complement)^complement = A$.

#Q()

4. #b() Suppose $U$ is a universal set and $A, B subset.eq U$ are arbitrary sets.

#r() Suppose $A subset.eq B$. Then

$ forall x in U, x in A ==> x in B $

by the definition of a subset. The contrapositive of this statement is

$ forall x in U, x in.not B ==> x in.not A  $

The sets $A^complement$ and $B^complement$ are

$ A^complement = {x in U : x in.not A} "and" B^complement = {x in U : x in.not B} $

Observe that $A^complement$ fulfills $forall x in U, x in.not A$ and $B^complement$ fulfills $forall x in U, x in.not B$. Then we have $B^complement subset.eq A^complement$ from the definition of a subset applied to $forall x in U, x in.not B ==> x in.not A$.

#l() Suppose $B^complement subset.eq A^complement$. The sets $A^complement$ and $B^complement$ are defined as

$ A^complement = {x in U : x in.not A} "and" B^complement = {x in U : x in.not B} $

Then by the definition of a subset, we have

$ forall x in U, x in.not B ==> x in.not A equiv forall x in U, x in A ==> x in B $

by taking the contrapositive. Again by the definition of a subset, this is equivalent to $A subset.eq B$, proving the statement.

#Q()

#pagebreak()

#q(title: "Problem 4")[
  For each of the following functions $f : A -> B$ determine whether $f$ is injective, surjective or bijective. Prove your assertions.

  1. $f : [0, 3] -> RR "where" f (x) = 2x$.

  2. $f : [3, 12) -> [0, 3) "where" f (x) = sqrt(x-3)$.

  3. $f : (-4, 1] -> (-5, -3] "where" f (x) = -sqrt(x^2 + 9)$.
]

1. #b() We claim that $f$ is not surjective. By definition, $f$ is surjective if

$ forall b in RR, exists a in [0, 3] "such that" f(a) = b $

Choose $b = 10$, which is in the codomain of $f$. Then $2a = 10 equiv a = 5$. However $a in.not [0, 3]$, so $f$ is not surjective.

We claim that $f$ is injective. By definition, $f$ is injective if 

$ forall a_1, a_2 in [0, 3], f(a_1) = f(a_2) ==> a_1 = a_2 $

Let $a_1, a_2 in [0, 3]$ be arbitrary. Suppose $f(a_1) = f(a_2)$. Then 

$ 2(a_1) = 2(a_2) equiv a_1 = a_2 $

Which was to be shown. So $f$ is injective.

#Q()

2. #b() We claim that $f$ is surjective. By definition, $f$ is surjective if

$ forall b in [0, 3), exists a in [3, 12) "such that" f(a) = b $

Let $b in [0, 3)$ be arbitrary. Choose $a = b^2 + 3$. Then $f(a) = sqrt(b^2 + 3 - 3) = b$. So $f(a) = b$. Due do the bounds of $b$, we have

$ 3 <= b^2 + 3 < 12 $

which is in the domain of $f$. Thus $f$ is surjective.

We claim that $f$ is also injective. By definition, $f$ is injective if

$ forall a_1, a_2 in [3, 12], f(a_1) = f(a_2) ==> a_1 = a_2 $

Let $a_1, a_2 in [3, 12]$ be arbitrary. Suppose $f(a_1) = f(a_2)$. Then 

$ sqrt(a_1 - 3) = sqrt(a_2 - 3) \
sqrt(a_1 - 3)^2 = sqrt(a_2 - 3)^2 \
a_1 - 3 = a_2 - 3 \
a_1 = a_2
$ 

Which was to be shown. The case where $a_1 - 3 = 3 - a_2$ is impossible because the radicands must be positive, and this result causes one of them to be negative. So $f$ is injective. Because $f$ is both surjective and injective, it is also bijective.

#Q()

3. #b() We claim that $f$ is surjective. By definition, $f$ is surjective if

$ forall b in (-5, -3], exists a in (-4, 1] "such that" f(a) = b $

Let $b in (-5, -3]$ be arbitrary. Choose $a = -sqrt(b^2 - 9)$. Then 

$ f(a) = -sqrt((-sqrt(b^2 - 9))^2 + 9) = -sqrt(b^2 - 9 + 9) = -(-b) = b $

because $b < 0$ and so $sqrt(b^2) = -b$. Due to the bounds on $b$, we have

$ -4 < -sqrt(b^2 - 9) <= 0 $

which is in the domain of $f$. Thus $f$ is surjective.

We claim that $f$ is not injective. By definition, $f$ is injective if

$ forall a_1, a_2 in (-4, 1], f(a_1) = f(a_2) ==> a_1 = a_2 $

Choose $a_1 = -1$ and $a_2 = 1$. Then $f(a_1) = -sqrt(1 + 9) = -sqrt(10)$ and $f(a_2) = -sqrt(1 + 9) = -sqrt(10)$. Then $f(a_1) = f(a_2)$, however $a_1 != a_2$, so we have found a counterexample. Thus $f$ is only surjective.

#Q()

#pagebreak()

#q(title: "Problem 5")[
    Prove that the composition of two surjective functions is surjective.
]

#b() Suppose that $f : A -> B$ and $g : B -> C$ are surjective functions. Then the composition $g compose f : A -> C$ is $g compose f (a) = g(f(a))$. We claim that $g(f(a))$ is surjective, or that

$ forall c in C, exists a in A "such that" g(f(a)) = c $

Let $c in C$ be arbitrary. Because $g$ is surjective, we know that

$ forall c in C, exists b in B "such that" g(b) = c $

So there exists a $b in B$ such that $g(b) = c$. Then, because $f$ is surjective, we know that

$ forall b in B, exists a in A "such that" f(a) = b $

So there exists an $a in A$ such that $f(a) = b$. Then $g(f(a)) = g(b) = c$. This means that the composition $g compose f$ is surjective.

#Q()

#pagebreak()

#q(title: "Problem 6")[
  Suppose that $g compose f$ is injective. Prove that $f$ is injective.
]

#b() Suppose that $f : A -> B$ and $g : B -> C$ are functions, and that the composition $g compose f = g(f(a))$ is injective. We claim that $f$ is also injective, or that

$ forall a_1, a_2 in A, f(a_1) = f(a_2) ==> a_1 = a_2 $

Let $a_1, a_2 in A$ be arbitrary. Suppose $f(a_1) = f(a_2)$. Then, applying $g$ to both sides, we have $g(f(a_1)) = g(f(a_2))$. By the definition of injectivity, $g(f(a))$ satisfies

$ forall a_1, a_2 in A, g(f(a_1)) = g(f(a_2)) ==> a_1 = a_2 $

So from our original assumption that $f(a_1) = f(a_2)$, we have $a_1 = a_2$. Thus the implication is true and $f$ is therefore injective.

#Q()