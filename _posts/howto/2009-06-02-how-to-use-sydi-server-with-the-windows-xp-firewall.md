---
layout: page
#subheadline: Templates
title:  "How to Use SYDI Server with the Windows XP Firewall"
meta_description: "If you're able to run SYDI locally from a computer but you're not able to reach it over the network. Perhaps with a 462 -- The remote server machine does not exist or is unavailable error, this note should interest you."
#teaser: "This is a example of page/post with a sidebar on the left."
breadcrumb: true
tags:
    - post format
categories:
    - howto
#image:
#    title: "unsplash_1.jpg"
#    caption: Unsplash.com
#    caption_url: http://unsplash.com
---
If you're able to run SYDI locally from a computer but you're not able to reach it over the network. Perhaps with a 462 -- The remote server machine does not exist or is unavailable error, this note should interest you. SYDI relies on WMI and the 462 is an error code which has been returned from WMI. You will see this error in two instances, the first one being the machine doesn't exist i.e. you typed the wrong name or weren't able to resolve the name. The other instance is that when the target computer isn't reachable.
<!--more-->
If your clients are running XP and have the firewall, which was shipped in Service Pack 2, enabled the ports SYDI need are disabled by default.

SYDI relies on WMI which in turn uses RPC communication. RPC starts it's communication on TCP/135 and then a dynamic port over TCP/1023 is used, this is negotiated between the client and the server.

In order to allow this communication you would have to change the group policy for the machine you are targeting.

In a domain environment you can change this setting under; Computer Configuration -&gt; Administrative Templates -&gt; Network -&gt; Network Connections -&gt; Windows Firewall -&gt; Domain Profile -&gt; Windows Firewall: Allow remote administration exception. Change the state to Enabled and in the Allow unsolicited incoming messages from field enter the ip address of the machine(s) you will be running SYDI from.

If the machine resides outside a domain you can edit the local group policy by opening up a local group policy from a snap-in in mmc.exe.
