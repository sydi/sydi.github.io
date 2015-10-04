---
layout: page
title: "Network Inventory in Excel"
# subheadline: "ToDo-List &amp; Ideas"
# teaser: "Here are some ideas and features I want to implement in the future."
header:
   # image_fullwidth: "header_roadmap_3.jpg"
permalink: "/tools/sydi-overview/"
meta_description: "Having basic information about a single computer can be useful for several different reasons. However creating an overview with information from several computers can be much better if you just want to scan a list of computers to see what kind of machines there are on a particular network."
---
Having basic information about a single computer can be useful for several different reasons. However creating an overview with information from several computers can be much better if you just want to scan a list of computers to see what kind of machines there are on a particular network.

<h3>SYDI-Overview.vbs</h3>

The script is included in the tools directory of <a href="http://sydiproject.com/products/sydi-server/">SYDI Server</a>. Before you can use the script you have to scan your computers with SYDI Server and write output in XML format. SYDI-Overview will parse these XML files and create an Excel document containing a list of all your computers with basic information such as operating system and memory configuration. It will also create separate sheets so you can see installed products and running processes.

<h3>Usage Scenarios</h3>

SYDI-Overview is perfect as a simple network inventory solution. For example you can print out the computers sheet and use during a meeting to show which users are in need of an upgrade.

If you have <a href="http://sydiproject.com/tools/sydi-audit-localgroups/">local administrators</a> on the computers in your organization there's a good chance you have all kinds of different applications running or at least installed on your computers. Viewing the sheets for installed products will give you a quick overview of what has been installed and it's easy to track down applications you don't want on your network.

Since the overview displays how many instances of a particular product are installed you can also use this information to see how standardized your environment is. If you have a standardized desktop your application count should be the same on all your applications.

Another sheet which is created is the services comparison sheet. On this sheet you will see a matrix of all your computers and their services. You will see which service is running or installed on which machines. This is also a good tab if you want to standardize your environment.

<h3>Using the Script</h3>

Like many other SYDI tools this script is written in vbscript and intended to be run from cscript.exe. To use it you provide an argument with the path to your SYDI Server output files:

<code>Cscript.exe sydi-overview.vbs -xN:\SYDI\Output</code>

If you don't give the script any arguments or use the –h argument the help menu is displayed.

<code>Cscript.exe sydi-overview.vbs -h
Microsoft (R) Windows Script Host Version 5.7
Copyright (C) Microsoft Corporation. All rights reserved.
SYDI-Overview v.0.2
Usage: cscript.exe sydi-overview.vbs -x[xml directory]</code>

<code>Example:
cscript.exe sydi-overview.vbs -x"D:\sydi output"</code>

<code>Options
 -x     - XML Input Directory
Tab Options
 -t     - Tabs to include (Default: -ts)
   s    - Service Comparison
 -h     - Display help</code>

You have to specify the –x parameter to point to a directory which includes the xml files you want to examine. The –t parameter is optional if you want to disable the services comparison tab. This information takes some time to write and if you don't need the tab it's faster do run the script without the services tab.

<code>cscript.exe sydi-overview.vbs -x"D:\sydi output" -t</code>
