---
layout: default
title: Archive
subtitle: 
description: 
featured_image: /images/feat.jpg
permalink: /blog/archive/
---
<section class="intro">
	<div class="wrap">
		<h1>{{ page.title }} <i class="fa fa-archive"></i></h1>
		<p>{{ page.subtitle }}</p>
	</div>
</section>

<section class="single">
	<div class="wrap">
		{% assign postsByYearMonth = site.posts | group_by_exp:"post", "post.date | date: '%Y %b'"  %}
		{% for yearMonth in postsByYearMonth %}
		  <h3>{{ yearMonth.name }}</h3>
		  <ul>
		    {% for post in yearMonth.items %}
		      <li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
		    {% endfor %}
		  </ul>
		{% endfor %}
	</div>
</section>