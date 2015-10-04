---
layout: page
show_meta: false
title: "How to use SYDI"
subheadline: "Layouts of Feeling Responsive"
header:
   image_fullwidth: "header_unsplash_5.jpg"
permalink: "/howto/"
---
<ul>
    {% for post in site.categories.howto %}
    <li><a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
