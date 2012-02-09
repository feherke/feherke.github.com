---
layout: page
title: 'Change http: / https:'
meta:
  description: Changes the protocol between plain and secure HTTP
  keyword: switch, protocol, http, httpd
date: 2011-05-07
project: firegestures-script
file:
  - change-http-https.js: script
---

# Change http: / https:

This script was replaced by [\[Popup\] Change Protocol](popup-change-protocol.html).
{: .note}

Changes the protocol from/to http: and https:.

Not so important script, I posted it because a catch : `window` refers to the chrome. To get the same `window` object as JavaScript gets in the document's context, you
have to use `window.content`.

## Versions

* 0.0 - May 2011 - Initial release.

## Plans

None.

## Download

{% include filelist.md %}
