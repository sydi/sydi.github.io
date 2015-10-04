---
layout: page
title: "Creating custom Server Documentations"
# subheadline: "ToDo-List &amp; Ideas"
# teaser: "Here are some ideas and features I want to implement in the future."
header:
   # image_fullwidth: "header_roadmap_3.jpg"
permalink: "/tools/ss-xml2word/"
---
Running SYDI-Server returns quite a lot of information when you aim it at a server, and goal of SYDI is to help you to document your network. However SYDI-Server only provides some base information. After SYDI-Server has created an inventory report you can use that as a starting point and write down information such as system owner, backup routines etc. After about a month when you want to run SYDI-Server again you realize that you will have to cut and paste back your own changes which waste time. Another goal of SYDI is to save time so we definitely don't want to do it that way.

<strong>SS-XML2Word.vbs</strong>

The script SYDI-Server-XML-to-Word (ss-xml2word.vbs) is located in the Tools directory of the <a href="http://sydiproject.com/products/sydi-server/">SYDI-Server</a> application. What the script does is that it converts the xml files, which sydi-server has created for you, into Microsoft Word documents. This is done by using a language file so the word file can be written in different languages. I maintain English and Swedish language files, but the package also contains user contributed language files.

As an optional step the script can also merge the xml files from SYDI Server with a custom XML file which you create. My intention is that you should use this xml file to write down your server documentation. In the SYDI-Server package there is an Examples directory which contains some samples which you can take a look at in order to get starting.

This means that you can edit the XML and write your own documentation and describe your backup routines and other information you will want to have in your final documentation. All this information will be merged with XML data from SYDI server into a Word file in the language of your choice. This is provided there has been one released, however they are easy to create if you want to make your own one.

Though editing XML files in this way isn't perfect, I feel it's a step up from manual cut and paste. I've had some thoughts of using Info path, or perhaps a Wordfile with macros as a way of making the process better for the end user (you). However, as it is now it will still output a pretty report.

<strong>Using the script</strong>

Like the other SYDI scripts you run this one with cscript.

<code>Cscript.exe ss-xml2word.vbs -x[SYDI-Server-outputfile.xml] -l[language-file.xml] -s[your-written-file.xml]</code>

The arguments for all of the files you point to has to be relative or absolute, use quotes if you have a space in the path. That is if you run the script from the Tools directory the argument for the English language file is -l..\language\lang_english.xml or you can use the full path and filename. If the script doesn't find the file you are referring to the script will fail. The written language file is optional so you don't have to use it if you don't want to. You can also create a generic one for all your machines and point to the same file if you want the same information to be entered into the final report.
