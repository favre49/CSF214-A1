# CSF214-A1
First Assignment for CS F214 - Logic in Computer Science

## Group Members:

Rahul Ganesh Prabhu (2018A7PS0193P)

Shreyas Kera (2018A7PS1119P)

Achyut Anand Tadepalli (2018A7PS1118P)

Raghurama Varma Gonela (2018A7PS1120P)

## Problem 1

### The Problem:
Given a weighted undirected graph G = (V, E). The weight on an edge (v1, v2) represents the distance between the vertices v1 and v2 {vi V; and (vi, vj) E}. Given a set of weights of edges in the form of prolog clauses:
weight(p, q, 20).
weight(q, r, 5).

Write a prolog program to check if there exists a path between two given vertices. Print the path and its length, if it exists. For example:

        ?- findPath(p, r, Path, L).

the prolog interpreter should print:

        Path = [p, q, r]
        L = 25

Note that the user should print an alternative path if it exists on each press of a semi colon and print no if no path exists.
Your program should avoid traversing through cycles, if any.

### How to run:
To test it on the simple graph test case, run:

        swipl graphTraversal.pl simpleGraphTest.pl

For a sample test check, try:

        ?- findPath(p,t,Path,Len).

To test it on the cyclic graph test case, run:

        swipl graphTraversal.pl cyclicGraphTest.pl

For a sample test check, try:

        ?- findPath(p,r,Path,Len).

### Assumptions:
The assumption made is that the given graph is simple. If the graph given is a multigraph, the output will show the same paths having different lengths, due to choosing different paths between two adjacent vertices.

## Problem 2

### The Problem:
Write a Prolog predicate for each of the following operations on a list:

- sublist(X,Y): true if list X is a sublist of list Y. A sublist is the original list, in the same order, but with no/some elements removed. 

- has_triplicate(X): true if list X contains at least three copies of an element. It also prints the element which is triplicated.

- remove_nth(N,X,Y): prints list Y which is the list X with its Nth element removed. If X does not have an Nth element then the predicate should fail. Assume that N > 0 .

- remove_every_other(X,Y): prints a list Y which is the list X with every other element removed (the two lists should have the same first element). 

Note: Each predicate should be able to print the alternative solutions if they exist.

### How to run:
To test the predicates, run:

        swipl sublist.pl hasTriplicate.pl removeEveryOther.pl removeNth.pl 

For test cases for sublist, run:

        ?- sublist([x,y,z],[a,b,x,c,d,y,z]).
        ?- sublist([a,b,c],[w,a,b,c,r]).
        ?- sublist([],[]). % Edge case
        ?- sublist([a,b],[w,r]). % Negative case

For test cases for has_triplicate, run:

        ?- has_triplicate([x,y,x,x,f,x]).
        ?- has_triplicate([a,b,a,b,a,b]).
        ?- has_triplicate([]). % Edge case
        ?- has_triplicate([x,y,z,z,y,x]). % Negative case

For test cases for remove_nth, run:

        ?- remove_nth(3,[a,b,c,d],X).
        ?- remove_nth(5,[a,b,c,d],X).

For test cases for remove_every_other, run:

        ?- remove_every_other([a,b,c,d,e,f,g], Y).
        ?- remove_every_other([a],Y).

### Assumptions:
No assumptions were made that were not given in the question.