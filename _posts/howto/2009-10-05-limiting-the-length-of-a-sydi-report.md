---
layout: page
#subheadline: Templates
title:  "Limiting the Length of a SYDI Report"
meta_description: "Running SYDI-Server using default settings usually generates a Word document somewhere between 20 and 40 pages. But it's easy to filter out what you don't want."
#teaser: "This is a example of page/post with a sidebar on the left."
breadcrumb: true
tags:
    # - post format
categories:
    - howto
#image:
#    title: "unsplash_1.jpg"
#    caption: Unsplash.com
#    caption_url: http://unsplash.com
---
Running SYDI-Server using default settings usually generates a Word document somewhere between 20 and 40 pages. While some people hunger for that much information, others are overwhelmed by the details. You might feel that some of the information is irrelevant to your network documentation. If your [server documentation template](http://sydiproject.com/guides/server-documentation-template/) doesn't include the information, why should your SYDI report?

Sometimes less is more.

I created SYDI with this in mind and you can customize the report quite extensively. Using the -h argument will show all available options for SYDI-Server.
<!--more-->
<code>cscript.exe sydi-server.vbs -h</code>

Looking through the output you will want to focus on the Gathering Options.

<em>[geek_gibberish]Although all of the information is collected by WMI there are two parameters depending on if the information is found by WMI providers or WMI connecting to the registry.[/geek_gibberish]</em>

By default all options are enabled, so running the script in the default mode is the equivalent to executing:

<code>cscript.exe sydi-server.vbs -wabefghipPqrsSu -racdklp</code>

Create a minimal report you would disable the WMI and Registry options by running:

<code>cscript.exe sydi-server.vbs -w -r</code>

If you would want to include everything aside from installed patches (q, from the help menu), processes (P) and services (s). You would execute this command:

<code>cscript.exe sydi-server.vbs -wabefghiprSu</code>

Since all the options we wanted to disable were those found under the WMI section we didn’t have to touch the –r (registry) parameter.
