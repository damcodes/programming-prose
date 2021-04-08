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

### I am a Software Engineer... Right?

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

### Divide and Conquer

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

Now, lets think about dividing the array. If we have an array of n integers (n=10 in my example), what's the easiest way of dividing it? I'd say in half. Intuitively, if you have 10 integers and you want to split it in half, you would split the integers into 2 groups of 5. 

For example: 

```python3 
subarr1 = [ el for el in arr[:5] ] # [ 45, 88, 25, 82, 9 ]
subarr2 = [ el for el in arr[5:] ] # [ 73, 63, 28, 4, 22 ]
```

So, as per the first step in a Divide and Conquer algorithm, we've divided our array. Now our <strong>mergeSort</strong> function would look like this: 

```python3 
def mergeSort(arr, start, end): 
  subarray1 = [ el for el in arr[:5] ]
  subarray2 = [ el for el in arr[5:] ]
```

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




