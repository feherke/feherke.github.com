---
layout: page
title: '[Popup] Change Protocol' # )
meta:
  description: Changes the protocol of the currently viewed URL
  keyword: switch, protocol, http, httpd
date: 2012-02-07
project: firegestures-script
file:
  - popup-change-protocol.js: script
  - change-http-https.js: old script
---

# Change Protocol

Once called **Change http: / https:** changed the protocol from/to `http:` and `https:`.

The old behavior was kept, but if you perform <kbd>Shift</kbd>-gesture, a popup list with the following protocols is displayed : `http:`, `https:`, `spdy:` and `ftp:`.

Not so important script, I posted it because a catch : `window` refers to the chrome. To get the same `window` object as JavaScript gets in the document's context, you
have to use `window.content`.

## Usage

Perform a gesture to instantly change the current URL's protocol between `http:` and `https:`.

Perform <kbd>Shift</kbd>-gesture to get a list of protocols and select the one to which you want to change the current URL's protocol.

## Configuration

Configuration not really supported.

But new protocols for the <kbd>Shift</kbd>-gesture's popup list can be easily added.

Just copy & paste a line of the `FireGestures.generatePopup()`'s parameter array and edit it.

## Versions

* 0.0 - May 2011 - Initial release, as [Change http: / https:](change-http-https.html).
* 0.1 - February 2012 - Renamed to \[Popup] Change Protocol. Added popup list.

## Plans

None. Maybe should cut off the path when changing to `ftp:` protocol. Maybe the same should be done for `spdy:` too. Undecided.

## Download

{% include filelist.md %}
