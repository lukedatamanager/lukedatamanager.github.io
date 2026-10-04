---
permalink: /tutorials/
title: "Tutorials"
layout: single
---

<div class="tutorials-page">

<p class="tutorials-page__lead">Practical learning resources for working with environmental and scientific data, from first principles to production-ready workflows.</p>

<section class="tutorials-page__section tutorials-page__section--video" aria-labelledby="video-tutorials">
  <div class="tutorials-page__section-header">
    <p class="tutorials-page__eyebrow">Watch</p>
    <h2 id="video-tutorials">Video tutorials</h2>
    <p class="tutorials-page__section-copy">Short walkthroughs and explainers that complement the written courses below.</p>
  </div>

  <section class="yt-channel-card">
    <div class="yt-channel-card__logo">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true" fill="currentColor"><path d="M23.5 6.2a3.01 3.01 0 0 0-2.12-2.13C19.55 3.6 12 3.6 12 3.6s-7.55 0-9.38.47A3.01 3.01 0 0 0 .5 6.2C.03 8.05 0 12 0 12s.03 3.95.5 5.8a3.01 3.01 0 0 0 2.12 2.13C4.45 20.4 12 20.4 12 20.4s7.55 0 9.38-.47a3.01 3.01 0 0 0 2.12-2.13C23.97 15.95 24 12 24 12s-.03-3.95-.5-5.8ZM9.6 15.6V8.4L15.8 12 9.6 15.6Z"/></svg>
    </div>
    <div class="yt-channel-card__body">
      <h3 class="yt-channel-card__name">Luke Data Manager</h3>
      <p class="yt-channel-card__desc">I share video walkthroughs on environmental data workflows, NetCDF files, FAIR data practices, and scientific data management, with companion material for the written tutorials on this page.</p>
      <a class="yt-channel-card__btn" href="https://www.youtube.com/@lukedatamanager" target="_blank" rel="noopener noreferrer">
        Watch on YouTube
      </a>
    </div>
  </section>

  <!--
    To embed a specific video, replace VIDEO_ID with the YouTube video ID and uncomment the block below.
    You can find the ID in the video URL: youtube.com/watch?v=VIDEO_ID

  <div class="yt-embed-wrap">
    <iframe
      src="https://www.youtube-nocookie.com/embed/VIDEO_ID"
      title="Luke Data Manager — featured video"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
      allowfullscreen
      loading="lazy">
    </iframe>
  </div>
  -->
</section>

<section class="tutorials-page__section" aria-labelledby="jupyter-book-tutorials">
  <div class="tutorials-page__section-header">
    <p class="tutorials-page__eyebrow">Read</p>
    <h2 id="jupyter-book-tutorials">Jupyter Book tutorials</h2>
    <p class="tutorials-page__section-copy">Structured courses for learning core concepts, practical workflows, and reusable techniques for scientific data work.</p>
  </div>

  <div class="tutorial-grid">

    <a class="tutorial-card" href="https://nordatanet.github.io/Introduction_to_CF-NetCDF" target="_blank" rel="noopener noreferrer">
      <div class="tutorial-card__icon">📘</div>
      <h3 class="tutorial-card__title">Introduction to NetCDF Files</h3>
      <p class="tutorial-card__desc">A gentle, no-code-required introduction to what a NetCDF file is, why they are useful for environmental science, and the tools available to work with them. Introduces the Climate and Forecast (CF) conventions and ACDD metadata standard for publishing FAIR-compliant datasets.</p>
      <div class="tutorial-card__meta">
        <span class="tutorial-card__tag">No prior experience needed</span>
        <span class="tutorial-card__tag">CF conventions</span>
        <span class="tutorial-card__tag">FAIR data</span>
      </div>
      <span class="tutorial-card__cta">Open tutorial →</span>
    </a>

    <a class="tutorial-card" href="https://nordatanet.github.io/NetCDF_in_Python_from_beginner_to_pro" target="_blank" rel="noopener noreferrer">
      <div class="tutorial-card__icon">🐍</div>
      <h3 class="tutorial-card__title">NetCDF in Python: From Beginner to Pro</h3>
      <p class="tutorial-card__desc">Hands-on Python course covering how to open and understand NetCDF files, create plots, extract data, build CF-compliant files from scratch, structure multi-file datasets, and combine data across files. Suitable for Python beginners; no prior NetCDF knowledge required.</p>
      <div class="tutorial-card__meta">
        <span class="tutorial-card__tag">Python</span>
        <span class="tutorial-card__tag">9 chapters</span>
        <span class="tutorial-card__tag">Citable on Zenodo</span>
      </div>
      <span class="tutorial-card__cta">Open tutorial →</span>
    </a>

    <a class="tutorial-card" href="https://nordatanet.github.io/NetCDF_in_R_from_beginner_to_pro" target="_blank" rel="noopener noreferrer">
      <div class="tutorial-card__icon">📊</div>
      <h3 class="tutorial-card__title">NetCDF in R: From Beginner to Pro</h3>
      <p class="tutorial-card__desc">The R companion to the Python course above. Covers reading and understanding NetCDF files, producing visualisations, extracting data to other formats, and writing CF-compliant NetCDF files from R. Suitable for R users of all levels with no prior NetCDF experience.</p>
      <div class="tutorial-card__meta">
        <span class="tutorial-card__tag">R</span>
        <span class="tutorial-card__tag">4 chapters</span>
        <span class="tutorial-card__tag">Citable on Zenodo</span>
      </div>
      <span class="tutorial-card__cta">Open tutorial →</span>
    </a>

    <a class="tutorial-card" href="https://nordatanet.github.io/Exploring_FAIR_data_with_Python" target="_blank" rel="noopener noreferrer">
      <div class="tutorial-card__icon">🌍</div>
      <h3 class="tutorial-card__title">Exploring FAIR Scientific Datasets with Python</h3>
      <p class="tutorial-card__desc">A practical guide to discovering, accessing, and visualising real-world open environmental datasets using Python. Each independent chapter introduces a new dataset, including global topography, sea surface temperatures, and surface temperature anomalies, with step-by-step code walkthroughs.</p>
      <div class="tutorial-card__meta">
        <span class="tutorial-card__tag">Python</span>
        <span class="tutorial-card__tag">Real datasets</span>
        <span class="tutorial-card__tag">Visualisation</span>
      </div>
      <span class="tutorial-card__cta">Open tutorial →</span>
    </a>

  </div>
</section>

</div>
