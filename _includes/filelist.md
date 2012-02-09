You can find the related files on GitHub in my [{{ page.project }} repository]({{ site.github }}/{{ page.project }})  :
{% for one in page.file %}
* [{{ one | hash: 'key' }}]({{ site.github }}/{{ page.project }}/blob/master/{{ one | hash: 'key' }}) - {{ one | hash: 'value' }}{% endfor %}
