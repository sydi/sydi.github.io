---
layout: page
title: "Audit Local Group Memberships"
# subheadline: "ToDo-List &amp; Ideas"
# teaser: "Here are some ideas and features I want to implement in the future."
header:
   # image_fullwidth: "header_roadmap_3.jpg"
permalink: "/tools/sydi-audit-localgroups/"
---
Do you have a nagging feeling that there are local administrator accounts distributed throughout your domain? If you don't have an easy way of finding all these accounts the sydi audit local group tool is just for you.

<h3>SYDI-Audit-LocalGroups.vbs</h3>

The script is included in the tools directory of <a href="http://sydiproject.com/products/sydi-server/">SYDI Server</a>. It works in the same way as <a href="http://sydiproject.com/tools/sydi-overview/">SYDI Overview</a> does. It parses SYDI-Server XML files and creates an Excel file containing a list of all your local groups on your client computers and member servers. The Excel file will have an overview sheet which lists all your groups and a separate sheet for each and every group. Viewing the individual sheets will show you the group members for every computer in your selection of XML files, this is provided that the group exists on the computer and that it has members.

<h3>Usage Scenarios</h3>

You might want to track how many local administrators you have in your organization, perhaps some users have been placed in the local administrators group "temporarily" but have now settled in with all the privileges it provides. Even if your organization doesn't yet disallow local administrative access you still might want to be able to see in black and white which users have been granted this access. The Power Users group can be another group you want to monitor.

If you have a standardized environment your group structure on your clients should all look the same way. You can use the tool to find any additional groups which shouldn't be there.

<h3>Using the Script</h3>

Like many other SYDI tools this script is written in vbscript and intended to be run from cscript.exe. To use it you provide an argument with the path to your SYDI Server output files:

<code>Cscript.exe sydi-audit-localgroups.vbs -xN:\SYDI\Output</code>
