---
layout: page
title: Tag list
meta:
  description: List of pages by tags
  keywords: tag, classification
date: 2012-02-04
bstyle: |
  h2:target {
    border-style: dashed;
    border-width: 1px;
    border-color: #66f;
    padding-left: 3px;
  }
---

# Tag list

Categories are used as primary classification, with 1-1 relation between pages and categories.

Tags are used as secondary classification, with 0-n relation between pages and tags.

{% for tag in site.realtag %}
## {{ tag[0] }} {#{{ tag[0] }}}
<ul>{% for page in tag[1] %}
<li><a href="/{{ page | replace_first: '.md', '.html' }}">{{ site.real[page].title }}</a></li>{% endfor %}
</ul>
{% endfor %}
