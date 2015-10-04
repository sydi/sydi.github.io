---
layout: page
title: "SYDI-Server"
# subheadline: "ToDo-List &amp; Ideas"
# teaser: "Here are some ideas and features I want to implement in the future."
header:
   # image_fullwidth: "header_roadmap_3.jpg"
permalink: "/products/sydi-server/"
meta_description: "SYDI Server helps you document your Windows servers by creating a report in Word or XML in a few seconds."
---
SYDI Server is the flagship of the SYDI network documentation project. It is the most used and mature script within the project.

Though SYDI is intended to help system administrators to document their network, SYDI-Server can also be used for network inventory purposes or asset tracking.

<h3>What it means for you</h3>

SYDI Server can help you in the documentation process by collecting information you would normally have to find manually, SYDI Server collects this automatically in 30 seconds. This includes information such as Operating System, Service Pack, basic hardware specification, installed applications, installed patches.

When this information has been collected SYDI writes it out to a nicely formatted Microsoft Word document or a more flexible XML document.

<h3>How it works</h3>

SYDI-Server basically has two parts one gathering part and one reporting part. The Gathering part uses WMI (Windows Management Instrumentation). WMI can be used to get more or less any information you would want to know about a host. Though WMI isn’t used this way within SYDI it is also possible to perform tasks with WMI such as starting and stopping services. WMI runs as a network service, so you aren’t limited to running SYDI on your local machine you can target any computer on your network.

By default SYDI Server tries to collect as much information as it can about the targeted host, when you see all the data the script collects you might feel you don’t need everything. Because of this there are a lot of command line arguments you can pass to SYDI Server to tell the script that you only want certain parts.

The reporting is done in two ways, the XML files are written just as plain text files. For the Word documents COM objects are used to create the documents from scratch. In order to write to a doc file you have to have Office installed on the computer you are running SYDI Server from, so you don’t need to have Office installed on the machine you are targeting. However since you might be in a situation where you can’t have Word installed on the computer you are running the script from there is also an option to create an XML file first and convert it to a Word document later.

<h3>Get the Software</h3>

You can download SYDI Server from the project’s <a href="http://sydiproject.com/download" title="Download SYDI-Server">Download page</a>.
