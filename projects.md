---
layout: page
title: Projects
permalink: /projects/
---

{% assign sorted_projects = site.projects | sort: "order" %}
{% for project in sorted_projects %}
<div class="proj-card">
  <div class="proj-card-head">
    <span class="proj-card-name"><a href="{{ project.url | relative_url }}">{{ project.title }}</a></span>
    <span class="proj-card-status{% if project.status == 'done' or project.status == 'exploring' %} done{% endif %}">{{ project.status }}</span>
  </div>
  <p class="proj-card-desc">{{ project.content | markdownify | strip_html | truncatewords: 40 }}</p>
  {% if project.tags %}
  <div class="post-tags">{% for tag in project.tags %}<span class="tag">{{ tag }}</span>{% endfor %}</div>
  {% endif %}
</div>
{% endfor %}
