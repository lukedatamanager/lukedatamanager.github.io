---
title: "Blog Posts"
permalink: /blog/
layout: single
entries_layout: list
---

{% assign sorted_tags = site.tags | sort %}

<style>
  .tag-filter-archive__entries {
    display: grid;
    gap: 1.25rem;
  }

  .tag-filter-archive__item {
    border: 1px solid #dfe7f1;
    border-radius: 0.8rem;
    overflow: hidden;
    background: #fff;
    box-shadow: 0 8px 20px rgba(15, 23, 42, 0.05);
  }

  .tag-filter-archive__item .archive__item {
    margin: 0;
  }

  .tag-filter-archive__thumb {
    display: block;
    text-decoration: none;
  }

  .archive__item-teaser {
    background: #edf3f8;
    border-bottom: 1px solid #dfe7f1;
    overflow: hidden;
  }

  .archive__item-teaser img {
    display: block;
    width: 100%;
    height: 220px;
    object-fit: cover;
    object-position: center;
    transition: transform 0.2s ease;
  }

  .tag-filter-archive__thumb:hover img,
  .tag-filter-archive__thumb:focus img {
    transform: scale(1.02);
  }

  .tag-filter-archive__meta {
    padding: 0.9rem 1rem 0;
  }

  .tag-filter-archive__excerpt {
    margin: 0;
    padding: 0 1rem 1rem;
    color: #465a70;
    line-height: 1.55;
    font-size: 0.96rem;
  }

  @media (min-width: 700px) {
    .tag-filter-archive__entries {
      grid-template-columns: repeat(2, minmax(0, 1fr));
    }

    .archive__item-teaser img {
      height: 260px;
    }
  }
</style>

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
				<article class="archive__item" itemscope itemtype="https://schema.org/CreativeWork">
					{% if post.teaser %}
						<a class="tag-filter-archive__thumb" href="{{ post.url | relative_url }}" aria-label="{{ post.title | escape }}">
							<div class="archive__item-teaser">
								<img src="{{ post.teaser | relative_url }}" alt="{{ post.title | escape }}" loading="lazy" />
							</div>
						</a>
						<div class="tag-filter-archive__meta">
							<p class="page__meta">
								{% if post.date %}
									<span class="page__meta-date">
										<time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">{{ post.date | date: "%b %-d, %Y" }}</time>
									</span>
								{% endif %}
							</p>
							{% if post.excerpt %}
								<p class="tag-filter-archive__excerpt p-summary" itemprop="description">{{ post.excerpt | strip_html | truncate: 180 }}</p>
							{% endif %}
						</div>
					{% else %}
						<h2 class="archive__item-title no_toc p-name" itemprop="headline">
							<a class="u-url" href="{{ post.url | relative_url }}" rel="permalink">{{ post.title }}</a>
						</h2>
						<p class="page__meta">
							{% if post.date %}
								<span class="page__meta-date">
									<time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">{{ post.date | date: "%b %-d, %Y" }}</time>
								</span>
							{% endif %}
						</p>
						{% if post.excerpt %}
							<p class="archive__item-excerpt p-summary" itemprop="description">{{ post.excerpt | strip_html | truncate: 180 }}</p>
						{% endif %}
					{% endif %}
				</article>
			</div>
		{% endfor %}
	</div>

	<p class="tag-filter-archive__empty notice--info" data-tag-empty hidden>No posts match this tag.</p>
</div>
