---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: Proofs
permalink: /proofs/
---

<ul>
  {% for proof in site.proofs %}
    <li>
      <a href="{{ proof.url }}">{{ proof.title }}</a>
      - {{ proof.date | date: "%B %d, %Y" }}
    </li>
  {% endfor %}
</ul>
