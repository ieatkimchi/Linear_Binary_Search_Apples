Linear_Binary_Search_Apples
===========================

Example of Linear and Binary Search with Apples

Linear search is an algorithm that sequentially checks every element one by one in a collection/list/array until it finds a match. 

Binary has three main components, the upper-bound, lower-bound and mid. The collection/list/array must also be sorted. Binary will find the mid-point and  to see if a match is greater than or less than your apple. Once it has determined what half the match is in, the upper, lower the mid is redefined and the process starts over.
The power of Binary search is efficiency, unless the match is found in the first few elements of a collection Linear search will have to make more comparisons than Binary will.

Say you had an apple with the diameter of 3 inches and you needed to find another apple with the exact same diameter in a bowl of apples each with a different diameter. 

Apples = [5,2,7,8,2,3,10,6,4,2] -- #array of apple diameters in inches

if you were to take one apple out of the bowl one at a time and compare it to your apple you would be doing linear search. 

For this collection of apples you would have to do 6 comparisons to find your match of 3 inches since the number 3 is at the 5th index of the collection. 

However if you took all the apples out of the bowl and lined them up according to diameter or sorting the collection you would get this.

Apples = [2, 2, 2, 3, 4, 5, 6, 7, 8, 10]

You then count your apples then find the middle apple, in this case its 4 and 5 so round down and select the 4th apple. Then compare your apple with the middle apple, is it less then the 4th apple or greater than the 4th apple? Since the 4th apple has a diameter of 4, your apple is smaller than that apples. So you can ignore all the apples that are bigger than yours.

That leaves you with 

Apples = [2, 2, 2, 3,]
Then your repeat the process and get

Apples = [2,3]

Finally you end up with your matching size apple of 3 inches.

Code would be something like this, count the qty. of apples or array.size which is 10 then halved it you would have you upper-bound of 10, your lower-bounds of 1 and the midpoint of to be in between 4 and 5, so round down or use ruby .floor to select 4 as the mid point.

Compared to Linear search which took 6 comparisons Binary only took 3 comparisons. Wheeeeeeeeee!
