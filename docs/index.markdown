---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
# title: Home
---

{% assign proofs = site.proofs %}
{% assign posts = site.posts %}
{% assign all_content = posts | concat: proofs %}
{% assign sorted_content = all_content | sort: 'date' | reverse %}

<ul>
  {% for item in sorted_content %}
    <li>
      <span class="post-meta">{{ item.date | date: "%b %-d, %Y" }}</span>
      
      {% if item.collection == 'proofs' %}
        <span class="label-proof">[Proof]</span>
      {% endif %}

      <h3>
        <a class="post-link" href="{{ item.url | relative_url }}">
          {{ item.title | escape }}
        </a>
      </h3>
    </li>
  {% endfor %}
</ul>
