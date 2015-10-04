---
layout: page
#subheadline: Templates
title:  "How to use SYDI Server with Login Scripts"
# teaser: "This is a example of page/post with a sidebar on the left."
breadcrumb: true
tags:
#    - post format
categories:
    - best-practices
#image:
#    title: "unsplash_1.jpg"
#    caption: Unsplash.com
#    caption_url: http://unsplash.com
---
Every once in a while I get a question regarding how you can run SYDI from login scripts. My short answer to this is don't.

### Why, you ask?
Because from a user perspective SYDI is slow, this of course depends on how fast your computers are and if you write to XML or Word. Hence running SYDI from a login script adds 15-60 seconds login time for each user every morning. Remember if you have 600 users and it takes 30 seconds additional time to login you've just wasted five hours of work, each day.
<!--more-->
Our job is to help the users to get as much work as possible done each day, if their computer boots up quickly they are happy if it takes too long they get grumpy and unproductive. At best you will get the blame for this at the worst I will!

Secondly in order to get all information from SYDI (under default settings) the user running SYDI needs administrative rights on the machine. This is to collect some of the Disk information. This is another best practice altogether, in short don't allow the users to be local administrators. If you do anyway be sure not to tell [Aaron](http://blogs.msdn.com/aaron_margosis/), he'll get a fits.

### But this is what I want to do!
If you still have your heart set on running SYDI as login scripts I would recommend that you instead use a computer start-up script and that you don't run the script every day. Make the startup script first check if a SYDI output file for the current computer exists in your repository. If it does make sure that the report is at least 7 days old, then run the script. This way the computer will boot up more slowly once every week instead of every day.

### A Different approach
However I still recommend that you rethink the login script strategy. What I would do is to instead schedule a script to run on one of your servers which basically does the same as the "computer startup" script I mentioned. Have a list of all your computers and check when the last report was written, if it is older than the time you specify then run SYDI against that computer. This way the script will run in the background and the users won't notice it. If they still notice it it's time to upgrade your machines in a hurry, rush over to Dell. Remember the five hours of wasted work, if your clients are too slow to run SYDI chances are your organization is wasting a lot of productive time just waiting for the computers to load. Create a diagram with sydi-overview and mark all the computers you will need to replace.
