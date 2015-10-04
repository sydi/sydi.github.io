---
layout: page
#subheadline: Templates
title:  "SYDI-Server 2.2 Released"
# teaser: "This is a example of page/post with a sidebar on the left."
breadcrumb: true
tags:
#    - post format
categories:
    - news
#image:
#    title: "unsplash_1.jpg"
#    caption: Unsplash.com
#    caption_url: http://unsplash.com
---
As of today 2.2 is the latest version of [SYDI-Server](http://sydiproject.com/products/sydi-server/). This version mostly takes care of some small issues.

However I've also included a script which lets you [audit local group membership](http://sydiproject.com/tools/sydi-audit-localgroups/) across your computers.

These are the short release notes I have for you this time:

* Added script sydi-audit-localgroups.vbs to audit local group memberships
*	Fixed issue with install time for patches on Vista
*	Fixed bug where subnet mask would appear as destination
*	Swapped Mb -&gt; MB
*	Added a Danish language file (by Christian Sandfeld)

The new script sydi-audit-localgroups.vbs is one I've been planning on writing for quite some time, then when a SYDI user requested this kind of functionality I threw the script together. It works the same way as sydi-overview.

My plan from the start was to name the sheets after the group names. However Excel didn't like some of the group names and crashed. So the sheets are named Group1 to GroupX. Run the script and you'll see what I mean.

Please let me know what you think!
