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

Say we had an array such that

```python3 
arr = [45, 88, 25, 82, 9, 73, 63, 28, 4, 22]
```

How could we sort this array using the divide and conquer technique? Let's break it down:

<ol>
  <li><strong>Divide</strong> the given array in half</li>
  <li><strong>Conquer</strong> each subarray by sorting them</li>
  <li><strong>Combine</strong> the sorted sub arrays</li>
</ol>



