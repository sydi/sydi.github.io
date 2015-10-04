---
layout: page
#subheadline: Templates
title:  "Unknown Runtime Error with Excel 2003"
# teaser: "This is a example of page/post with a sidebar on the left."
breadcrumb: true
tags:
#    - post format
categories:
    - troubleshooting
#image:
#    title: "unsplash_1.jpg"
#    caption: Unsplash.com
#    caption_url: http://unsplash.com
---
Though troubleshooting can be quite fun at times, at least when your hair isn't on fire. There are some errors which you don't want to see i.e. “unknown error, contact your administrator". When a SYDI user emailed asking me why the [network inventory script](http://sydiproject.com/tools/sydi-overview/) sydi-overview crashed with unknown runtime error I just couldn't figure it out since it worked perfectly for me.

Then I remembered that one of the new features in Office 2007 was that in Excel the limitation of 65,536 rows has been removed. Though I like Excel I feel sad for the people who have to have more than 65 k rows in an excel sheet. What I didn't know but found out was that Excel 2003 also had a [limit of 256 columns](http://office.microsoft.com/en-us/excel/HA101375451033.aspx) on a single sheet.

So if you had more than 256 services you will have to upgrade to Office 2007 if you need the tab. If you don't need the tab but want sydi-overview to work you can run the script with the -t argument:

``` Batchfile
cscript.exe sydi-overview.vbs -x"path to xml files" -t
```

I didn't realize this would be a problem when I wrote the script. If you have fewer than 256 services this won't be a problem, your other option is Excel 2007.

Since I don't use Office 2003 I would never have realized this was an issue if someone hadn't reported this to me. If you experience any issues with SYDI please let me know so I can troubleshoot the issue.
