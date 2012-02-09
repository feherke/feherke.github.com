---
layout: page
title: 1 Click 2 Search 4 Word
meta:
  description: Searches for the previously single-clicked word
date: 2012-02-02
tag: search
bstyle: |
  table.nowrap1 td:first-child {
    white-space: nowrap;
  }
  strong.cursor {
    color: red;
  }
project: firegestures-script
file:
  - click-search-word.js: script
---

# 1 Click 2 Search 4 Word

Previously I used the Search for Selection (in foreground tab) script for fast and simple searches on terms found in the visited pages. This way mostly I search for
only one word at a time. And the fastest way to select one word is to double click it.

But I also use the [Dictionary Tooltip](https://addons.mozilla.org/en-us/firefox/addon/dictionary-tooltip/) extension with double click enabled, so after double click
it displays its icon near the selected word. If I am in a hurry, sometimes I accidentally move the mouse over the Dictionary Tooltip icon and it pops up its window.

This script helps avoiding such situations by considering the word at the caret the search term. ( Note that I am talking about the text cursor, the visible by turning
Caret Browsing ( <kbd>F7</kbd> ) on. )

Some examples will explain it better ( cursor symbolized with a pipe ( **\|**{: .cursor} ) character ) :

| Text                                | Selection | Explanation                                                                               |
|-------------------------------------|-----------|-------------------------------------------------------------------------------------------|
| - Hello * Wor**\|**{: .cursor}ld !  | World     | cursor inside the word - word characters on both sides                                    |
| - Hello * **\|**{: .cursor}World !  | World     | cursor at the beginning of the word - word characters after the cursor                    |
| - Hello**\|**{: .cursor} * World !  | Hello     | cursor at the end of the word - word characters before the cursor                         |
| -**\|**{: .cursor} Hello * World !  | Hello     | cursor at the beginning of text - no word characters on either side, just somewhere after |
| - Hello * World **\|**{: .cursor}!  | World     | cursor at the end of text - no word characters on either side, just somewhere before      |
| - Hello **\|**{: .cursor}\* World ! | World     | cursor between words - no word characters on either side, just somewhere around           |
{: .nowrap1}

So always considers the closest word, excepting the last case where first looks after the cursor.

Note that HTML markup separates the document into text nodes and this script looks the word only inside the given text node. So for example for the input text
"some spell **\|**{: .cursor}colo<u>u</u>r" only "colo" will be selected.

## Usage

Click on or near the world you want to search for _then_ perform the gesture to search.

Click on or near the world you want to search for _then_ perform <kbd>Shift</kbd>-gesture to copy the work into the search bar.

## Configuration

Configuration not really supported.

But changing the list of separators is pretty simple. Just locate the following fragment in the stript and change the string value :

{% highlight javascript %}
FireGestures.API_1click2search4word={
  separator: ' .‧…!¡?¿,;:\'"`´¨“”„‹›«»/\\\\|¦+±\\-–—*×÷=()\\[\\]{}<>@#$%‰‱^&',
}
{% endhighlight %}{::comment}_{:/}

## Versions

* 0.0 - May 2011 - Initial release.
* 0.1 - February 2012 - Use better regular expression than `\W` for word separator. <kbd>Shift</kbd>-gesture copy the term into the search bar.

## Plans

* Would be nice to make it work even without the single click.

## Download

{% include filelist.md %}
