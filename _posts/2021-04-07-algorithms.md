---
layout: post
title: Algorithms 
subtitle: 
gh-repo: davidmolina2810/programming-prose
gh-badge: [star, fork, follow]
tags: 
comments: true
readtime: true
thumbnail-img: https://eric.guldbrand.io/projects/data-structures/thumbnail.png
cover-img: https://miro.medium.com/max/2726/0*UVG1F-0kLAEWAT3k
---

### I'm a Good Programmer... Right?

&nbsp;&nbsp;&nbsp;&nbsp;I graduated from Flatiron School's Software Engineering program on March 12th 2021. Since then, I've been ecstatic&mdash;applying to jobs (that require degrees I don't have), working on new personal projects, and overall feeling like a coding boss. 

&nbsp;&nbsp;&nbsp;&nbsp;Enter reality. 

&nbsp;&nbsp;&nbsp;&nbsp;Today, I completed a technical interview, my first, that involved writing a BASH script and a complex (so it seemed to this "coding boss") SQL query, answering 10 multiple choice questions about BASH, and solving a problem using an *algorithm* in your language of choice. I chose Javascript. Now, I went into the coding challenge with high confidence. I really thought&mdash;admittedly, still do&mdash;that I was a pretty good programmer. I even have some experience in algorithms from taking Data Structures and Algorithms with Python at University of Houston-Downtown. 

&nbsp;&nbsp;&nbsp;&nbsp;Yet, I pretty much bombed that coding challenge. Specifically, I *really* struggled with the algorithm problem. Quite humbling has this experience been. Since seeing my score, which, needless to say, was a failing one, certain questions have been relentlessly racing around in my head. Questions like: 

<ul>
  <li>Am I dumb?</li> 
  <li>I'm a good programmer, why did I fail?</li> 
  <li>Am I cut out to be a developer?</li>
</ul>

### Failure as Fuel in the Enginge of Success

&nbsp;&nbsp;&nbsp;&nbsp;For the moment, I'll answer as follows:

<ul>
  <li>Definitely not.</li>
  <li>Devasting lack of preparation.</li>
  <li>Work in progress.</li>
</ul>

&nbsp;&nbsp;&nbsp;&nbsp;I've always been a strong believer that achieving mastery in anything requires overwhelming tenacity. So, having sulked for a couple hours, I will now attempt energy redirection by taking this failure and educating myself by educating you about algorithms.

## Algorithms

>An algorithm is a set of step-by-step procedures, or a set of rules to follow, for completing a specific task or solving a particular problem.

&nbsp;&nbsp;&nbsp;&nbsp;At its core, an algorithm is really just instructions. I'm almost 100% sure I can promise you that you've been exposed to algorithms and algorithmic thinking. If you're a driver, you're actually quite the expert with algorithmic thinking. Think about it, what do you do if you're in your car and you need to drive somewhere? Probably something like this: 

<ol>
  <li>Insert key into ignition and twist to start</li>
  <li>Press foot brake and release emergency brake</li>
  <li>Shift gear from parked to drive</li>
  <li>Look both ways</li>
  <li>If no oncoming traffic, floor it</li>
  <li>Else, return to step 4</li>
</ol>

&nbsp;&nbsp;&nbsp;&nbsp;Every time you drive in your car, you repeat these steps and so many more. You're a seasoned programmer when it comes to many mundane tasks. With this basic concept that an algorithm is just a set of instructions, we can tackle more complex, "real" computer science concepts.

### Types of Algorithms

&nbsp;&nbsp;&nbsp;&nbsp;There are a bunch of differnt algorithms, but in computer science, the basic kinds are:

<ul>
  <li>Searching</li>
    <ul>
      <li>Divide and Conquer</li>
      <li>Brute Force</li>
      <li>Randomized</li>
      <li>Greedy</li>
      <li>Recursive</li>
      <li>Backtracking</li>
      <li>Dynamic Programming</li>
    </ul>
  <li>Sorting</li>
    <ul>
      <li>Linear</li>
      <li>Bubble</li>
      <li>Insertion</li>
    </ul>
</ul>

#### Divide and Conquer

&nbsp;&nbsp;&nbsp;&nbsp;Divide and conquer algorithms are exactly what they say they are. You divide a problem into smaller problems, conquer those problems, and combine the results to get your final solution. So, three easy steps:

<ol>
  <li><strong>Divide</strong> the problem into smallers problems</li>
  <li><strong>Conquer</strong> the small problems</li>
  <li><strong>Combine</strong> the small problems to solve the big one</li>
</ol>

**Note:** Examples written in Python
{: .box-note}

Say we had an array with n integers such that

```python3 
arr = [45, 88, 25, 82, 9, 73, 63, 28, 4, 22]
```

How could we sort this array using the divide and conquer technique? Let's break it down:

<ol>
  <li><strong>Divide</strong> the given array in half</li>
  <li><strong>Conquer</strong> each sub array by sorting them</li>
  <li><strong>Combine</strong> the sorted sub arrays</li>
</ol>

Our function for solving this problem needs to accept at least 1 argument&mdash;the array to be sorted.

```python3
def mergeSort(arr):
  ...
```

Now, lets think about dividing the array. If we have an array of n integers (n=10 in my example), what's the easiest way of dividing it? I'd say in half. Intuitively, if you have 10 integers and you want to split it in half, you would split the integers into 2 groups of 5. To apply the same logic to an array of n integers, we would do the following: 


```python3 
subarr1 = [ el for el in arr[:5] ] # [ 45, 88, 25, 82, 9 ]
subarr2 = [ el for el in arr[5:] ] # [ 73, 63, 28, 4, 22 ]
```

Programmatically, we could think about splitting an array into two as finding the midpoint of the array, and setting sub array 1 as the elements in the original array from position 0 to the midpoint and sub array 2 as the elements from the position after the midpoint to the end of the array. For example: 

```python3
# integers in array
n = len(arr)

midpoint = n // 2

# subarr1 would be elements from 0 to midpoint of arr 
subarr1 = arr[0:midpoint]
# subarr2 would be elements from element after midpoint to the end
subarr2 = arr[midpoint + 1:n-1]
```
We'll use this logic later to sort sub arrays of any size. As per the first step in a Divide and Conquer algorithm, we've divided our array. 

Next, step 2: conquer each sub array. How? Well, we know our ultimate goal is to have a sorted array. If you had an array with only 2 elements, arr = [ 9, 6 ], how would you sort this? You'd consider the pair of elements, if the first element has a value greater than the second, swap the position of the elements. Using recursion, we'll conquer and sort a sub array by splitting it in half until only 2 elements remain. Then, we'll sort the pair of elements and merge them into an array to be returned.

For this, let's make 2 helper functions, <strong>sort</strong> and <strong>merge</strong>. <strong>merge</strong> will accept 4 arguments&mdash;an arrary, the left index and right index of the sub array within the array to be sorted, and a midpoint in the array. Although a little counterintuitive, <strong>merge</strong> is actually where the sorting of the arrays happens. 

```python3
def merge(arr, left, mid, right):
  ...
```

We'll write <strong>merge</strong> so that it takes the array and compares the left side of the array, from position 0 to the midpoint provided, versus the right side of the array, from the midpoint to the last element in the array. To do this, we'll create 2 temporary arrays in <strong>merge</strong>. 

```python3
def merge(arr, left, mid, right): 

  # get index range of left side of arr
  n1 = mid - left + 1

  # get index range of right side of arr
  n2 = right - mid

  # create 2 temp arrays
  L = [0] * n1
  R = [0] * n2

  # copy left half of arr into L
  for i in range(0, n1):
    L[i] = arr[i + 1]

  # copy right half of arr into R
  for j in range(0, n2):
    R[j] = arr[mid + 1 + j]
```

Now, we'll take the sub arrays and iterate over them to compare the element at index i from the left sub array to the element at index j in the right sub array. If the left side element, x, is greater than the right side, y, swap the positions of y and x in the original array. 

```python3
def merge(arr, left, mid, right):
  ...
  i = 0 # track index of L
  j = 0 # track index of R
  k = 1 # track index of arr

  # iterate over sub arrays and arr
  # here we'll start sorting and merging the sub arrays
  while i < n1 and j < n2:
    if L[i] <= R[j]:
      arr[k] = L[i]
      i += 1
    else: 
      arr[k] = R[j]
      j += 1
    k += 1

  # copy leftover elements from L into arr
  while i < n1:
    arr[k] = L[i]
    i += 1
    k += 1

  # copy leftover elements from R into arr
  while j < n2: 
    arr[k] = R[j]
    j += 1 
    k += 1
```

That completes <strong>merge</strong>. It will take an array, divide into 2 sub arrays, sort each sub array, and merge them back into the original array. 

Next, we'll implement <strong>sort</strong>, which will serve as the recursive engine in our function. We'll pass an array, a starting index, and an ending index to it, and it will call itself on each half of the array, every time dividing each sub array in half, until it gets down to an array with 2 elements. Then the sorting and merging begins. 

```python3 
def sort(arr, start, end): 
  if start < end: # duh

    # calculate midpoint, (start + end) // 2
    m = (l + (r-1)) // 2 # same as above except handles possible overflow

    # sort first half of arr
    sort(arr, start, mid)

    # sort second half of arr
    sort(arr, mid + 1, end)

    # merge the two sub arrays together
    merge(arr, start, mid, end)
```

Now, we can write a complete <strong>mergeSort</strong> function.

```python3
def mergeSort(arr): 

  def merge(arr, left, mid, right): 

    # get index range of left side of arr
    n1 = mid - left + 1

    # get index range of right side of arr
    n2 = right - mid

    # create 2 temp arrays
    L = [0] * n1
    R = [0] * n2

    # copy left half of arr into L
    for i in range(0, n1):
      L[i] = arr[left + i]

    # copy right half of arr into R
    for j in range(0, n2):
      R[j] = arr[mid + 1 + j]
    
    i = 0 # track index of L
    j = 0 # track index of R
    k = left # track index of arr

    # iterate over sub arrays and arr
    # here we'll start sorting and merging the sub arrays
    while i < n1 and j < n2:
      if L[i] <= R[j]:
        arr[k] = L[i]
        i += 1
      else: 
        arr[k] = R[j]
        j += 1
      k += 1

    # copy leftover elements from L into arr
    while i < n1:
      arr[k] = L[i]
      i += 1
      k += 1

    # copy leftover elements from R into arr
    while j < n2: 
      arr[k] = R[j]
      j += 1 
      k += 1

  def sort(arr, start, end): 
    if start < end: # duh

      # calculate midpoint, (start + end) // 2
      mid = (start + (end-1)) // 2 # same as above except handles possible overflow

      # sort first half of arr
      sort(arr, start, mid)

      # sort second half of arr
      sort(arr, mid + 1, end)

      # merge the two sub arrays together
      merge(arr, start, mid, end) 

  n = len(arr)

  # start the sort on the whole array
  sort(arr, 0, n-1)
  ```

#### Greedy 

&nbsp;&nbsp;&nbsp;&nbsp;Another type of algorithm is a greedy algorithm. A greedy algorithm is one that finds the optimal global solution by finding the optimal local solution. Basically it maps over an array and runs certain conditons against (this is the local problem), if the optimal local solution contributes to the global solution, take this element. 

&nbsp;&nbsp;&nbsp;&nbsp;To demonstrate this, we'll use a coin change example. Say you bought something for 42 cents, and you gave the cashier 2 quarters. That's 8 cents in change. Let's write a method that will print what coins we'll get in return. 

Our method will accept one argument, the value of change to be returned.

```python3
def coinChange(change):
  coins = [ 25, 10, 5, 1 ] # each element represents a coin
  coinChange = [] # empty array to hold coins
  i = 0 # initialize index for coinChange
```

Now, what's our global problem? We want an array returned containing integers 1, 5, 10, or 25, representing the coins we'd get back for x amount of change. So, if we have an amount of change, x, we could map over an array representing coins and if the coin value is less than or equal to x, add that coin to the array of coins to be returned&mdash;this is our local problem. Finding the optimal solution to the local problem, whether or not the coin value is less than or equal to the change value, and if so, taking the coin to be returned, ultimately solves our global problem.

This logic would look like this, completing <strong>coinChange</strong>:

```python3
def coinChange(change):
  coins = [ 25, 10, 5, 1 ] # each element represents a coin
  coinChange = [] # empty array to hold coins to be returned
  i = 0 # initialize index for coinChange

  while change > 0:
    for coin in coins:
      if coin <= change:
        coinChange.append(coin)
        i += 1
        change = change - coin
  return coinChange
```

With <strong>coinChange</strong> we could do something like this: 

```python3
def printCoins(price, paid):
  print(f'Item cost: {price}¢')
  print(f'Amount paid: {paid}¢')

  if paid > price: 
    change = paid - price
    print(f'Change: {change}¢')
    print(f'Coins: {coinChange(change)}')
  else:
    print("Insufficient funds.")
  
printCoins(54, 80)
```
Output:
```python3
Item cost: 54¢
Amount paid: 80¢
Change: 26¢
Coins: [ 25, 1 ]
```

#### Insertion Sort

&nbsp;&nbsp;&nbsp;&nbsp;As opposed to merge sort, an insertion sort is less efficient (especially as the size of the array approaches infinity), but still, it is a fundamental algorithm in computer science. 

An insertion sort works by mapping over an array and comparing one element to the next. If the second element is larger than the first one, insert it before the first element and shift the first element one position forward.

So, our <strong>insertionSort</strong> method will accept one argument, an array. To start the sort, we'll iterate from the second element in the array to the last. We'll keep track of the current element in the array using a variable, curEl. We'll track the previous element in the array using an index. 

```python3
def insertionSort(arr):
  
  # iterate from second element to the end of array
  for i in range(1, len(arr)):

    # current element
    curEl = arr[i]

    # move elements behind curEl 1 position forward if greater than curEl

    j = i - 1 # index for previous element

    while j >= 0 and key < arr[j]:
      arr[j + 1] = arr[j]
      j -= 1
    arr[j + 1] = currEl

# driver code
arr = [ 45, 89, 22, 61, 75 ]
print(f'Given array: {arr}')
insertionSort(arr)
print(f'Sorted array: {arr}')
```
Output: 
```python3
Given array: [ 45, 89, 22, 61, 75 ]
Sorted array: [ 22, 45, 61, 75, 89 ]
```

### Resources
- [What is an Algorithm and Why Are They Important](https://www.mycodingplace.com/post/what-is-an-algorithm-and-why-are-they-important)
- [Top Algorithms/Data Stuctures/Concepts every compurter science student should know](https://medium.com/techie-delight/top-algorithms-data-structures-concepts-every-computer-science-student-should-know-e0549c67b4ac)
- [Python Program for Merge Sort](https://www.geeksforgeeks.org/python-program-for-merge-sort/)
- [Greed Algorithm](https://www.codesdope.com/course/algorithms-greedy-algorithm/)
      


  






