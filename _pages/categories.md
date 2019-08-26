---
layout: default
title: Categories
subtitle: 
description: 
featured_image: /images/feat.jpg
permalink: /blog/categories/
---

<section class="intro">
  <div class="wrap">
    <h2>{{ page.title }} <i class="fa fa-tags"></i></h2>
    <p>{{ page.subtitle }}</p>
  </div>
</section>

<section class="single">

  <div class="home">
    <p class="post-meta" style="text-align: justify;">
    {% capture site_categories %}{% for category in site.categories %}{{ category | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
    {% assign categories = site_categories | split:',' | sort %}
    {% include categorycloud.html %}
    </p>
  </div>

  <hr>

  <div class="wrap">
    <h2 class="page-heading">Posts with Category</h2>
    {% for category in site.categories %}
    <div class="archive-group">
      {% capture category_name %}{{ category | first }}{% endcapture %}
      <a name="{{ category_name | slugize }}"></a>
      <div id="#{{ category_name | slugize }}"></div>
        <h3 class="category-head">{{ category_name }} ({{ site.categories[category_name].size }})</h3>
        {% for post in site.categories[category_name] %}
        <article class="archive-item">
          <p><a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a></p>
        </article>
      {% endfor %}
    </div>
    {% endfor %}

  </div>
</section>
