---
title: "Blog Posts"
permalink: /blog/
layout: single
entries_layout: list
---

{% assign sorted_tags = site.tags | sort %}

<div class="tag-filter-archive" data-tag-filter-archive>
	<ul class="taxonomy__index">
		<li>
			<a href="#all" class="tag-filter-archive__filter is-active" data-tag-filter="all" aria-current="true">
				<strong>All</strong> <span class="taxonomy__count">{{ site.posts | size }}</span>
			</a>
		</li>
		{% for tag in sorted_tags %}
			{% assign tag_name = tag[0] %}
			{% assign tag_slug = tag_name | slugify %}
			{% assign tag_posts = tag[1] %}
			<li>
				<a href="#{{ tag_slug }}" class="tag-filter-archive__filter" data-tag-filter="{{ tag_slug }}">
					<strong>{{ tag_name }}</strong> <span class="taxonomy__count">{{ tag_posts | size }}</span>
				</a>
			</li>
		{% endfor %}
	</ul>

	<div class="entries-list tag-filter-archive__entries">
		{% for post in site.posts %}
			{% capture post_tag_slugs %}{% for post_tag in post.tags %}{{ post_tag | slugify }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
			<div class="list__item tag-filter-archive__item" data-tag-entry data-tags="{{ post_tag_slugs | strip }}">
				{% include archive-single.html type=page.entries_layout %}
			</div>
		{% endfor %}
	</div>

	<p class="tag-filter-archive__empty notice--info" data-tag-empty hidden>No posts match this tag.</p>
</div>
