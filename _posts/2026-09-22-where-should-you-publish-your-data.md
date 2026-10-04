---
title: "Where should you publish your data?"
excerpt: "Choosing a repository is really about choosing the discovery services and research communities through which your data will be found and reused."
last_modified_at: 2026-10-04
categories:
  - Blog
tags:
  - discovery
  - aggregation
---

There are hundreds of repositories around the world that host scientific data, ranging from repositories tied to individual research institutions, up to national, regional and international repositories that may be discipline specific or generic. For someone new to publishing data, this breadth and diversity of selection can resemble an extensive and elaborate menu at a new, critically acclaimed restaurant in town. You know you want to eat there, but what should you pick? Each dish is accompanied by a mouth-watering description of what it offers. But which is best for you? And how can you be sure that you won’t be left wishing you had ordered what your friend did instead?

Publishing data should not be viewed simply as an archival process - providing open access to data to improve the transparency and reproducibility of science. Data should be published in a way that maximizes the chance of reuse. For a data consumer, it is simply impractical to search through hundreds of repositories for data that may be relevant for them. According to a 2016 survey[^1], data scientists spend 19% of their time collecting data, and a further 60% cleaning and organising them. They dedicate only a small proportion of their time for tasks like mining data for patterns (3%), refining algorithms (4%) and building training datasets (10%) - the “what we think they do” tasks that lead Harvard Business Review to coin data scientist “the sexiest job of the 21st century” in 2012[^2]. Perhaps the authors were unaware of how time consuming and mundane these tasks are.

The FAIR principles[^3] were developed to address this. With a strong focus on machine-actionable data, these principles provide guidance on how to make data Findable, Accessible, Interoperable and Reusable. In essence, FAIR data should be understandable and usable by computers, so that they can be integrated into workflows that facilitate data discovery and reuse. Let computers automate the tedious and repetitive tasks so that we humans can focus on the more exciting tasks that require human ingenuity that - for now at least - machines can not replicate to the same level.

## Why aggregators matter

To simplify how ‘Findable’ data are, given the number of repositories, we need aggregators that make all the relevant data available through unified search portals. Just like repositories, aggregators can also be discipline specific or generic, national, regional or international. Aggregators don’t need to harvest and duplicate the data themselves - they can simply harvest the metadata, including any access URLs, to provide links to the data regardless of where they are stored physically. Some in data management are of the opinion that there can be too many aggregators, making it potentially difficult for data consumers to know which one to use. Whilst I agree in principle, I don’t think we are anywhere near how many aggregators there could and perhaps should be for maximum benefit. A single dataset can be findable and accessible via any number of aggregators. Consumers will flock to the aggregators that they find most useful whilst less popular aggregators will slowly disappear.

So can we just build aggregators that harvest from all repositories? Unfortunately, no. It is not practical to both build and maintain through time custom links between every aggregator and every repository. Standards in how metadata are encoded and communicated enable a small suite of software to be reused for all links. Unfortunately, not all repositories and aggregators conform to these standards. This makes any links that are developed fragile, since upstream changes could require the software providing the link to be adjusted or rewritten entirely.

<figure>
  <img src="{{ '/assets/images/data_web.png' | relative_url }}" alt="A web of repositories and aggregators connected through shared metadata standards and discovery pathways.">
  <figcaption>A single dataset may become discoverable through multiple aggregators, but only when repositories and discovery services are connected through shared standards.</figcaption>
</figure>

How do you know which data centres are compliant with these standards? Ideally, a repository should document which standards it complies with (or doesn’t). In reality, this is often not the case, and this information can be hard to find. My advice is to put yourself in the shoes of someone looking for data like yours. Which aggregator are they likely to use? Publish your data to one of the data centres that contributes to that. The fact that an aggregator invests the time to continually harvest from a repository is a good indication that the repository is conforming to some standards at least. I have listed some popular aggregators below to help you.

## Which aggregators should you consider?

So how do you know which discovery services are relevant to your data? There is no single aggregator that covers everything, and the most useful service will depend heavily on your discipline and the community you want to reach. The following are some examples of major discovery services and aggregators. This is not intended to be an exhaustive list, but rather to illustrate the range of services that exist and the different communities they serve.

### Discipline-specific discovery

For many datasets, discipline-specific aggregators may be considerably more important than general-purpose services. Researchers are often more likely to search the discovery infrastructure used by their scientific community than a generic data catalogue.

| Aggregator | Discipline / community | Geographic scope |
|---|---|---|
| **[GBIF](https://www.gbif.org/)** | Biodiversity | International |
| **[EMODnet](https://emodnet.ec.europa.eu/)** | Marine and ocean data | European / international |
| **[EarthChem](https://www.earthchem.org/)** | Geochemistry / Earth sciences | International |
| **[PANGAEA](https://www.pangaea.de/)** | Earth and environmental sciences | International |
| **[NASA Earthdata](https://www.earthdata.nasa.gov/)** | Earth observation and Earth sciences | International |
| **[Copernicus Data Space Ecosystem](https://dataspace.copernicus.eu/)** | Earth observation | European / international |
| **[DataONE](https://dataone.org/)** | Environmental and ecological sciences | International |

**GBIF** is perhaps one of the clearest examples of the benefits of discipline-specific aggregation. It brings together biodiversity data from thousands of institutions and makes them discoverable through a common infrastructure. For someone publishing biodiversity data, being visible through GBIF may therefore be considerably more important than being visible through a generic data catalogue.

Similarly, **EMODnet** provides discovery and access to marine data from distributed sources across Europe. Researchers working with marine data may reasonably be expected to search EMODnet alongside, or instead of, a general-purpose data repository.

### Polar data

For Polar research, there is another layer of discovery infrastructure that is particularly relevant.

| Aggregator / portal | Scope |
|---|---|---|
| **[SIOS Data Centre](https://data.sios-svalbard.org/)** | Svalbard / Arctic |
| **[SAON](https://www.arcticobserving.org/)** | Arctic | 
| **[Polar Data Search](https://search.polder.info/)** | Arctic & Antarctica |

For researchers working in the polar regions, these community-specific discovery services can be particularly important. A dataset describing observations from Svalbard, for example, may be much more likely to be found by another Arctic researcher through an Arctic-specific portal than through a generic repository search.

### Genomic and molecular data

Genomic data provide another example of international data federation. The **[International Nucleotide Sequence Database Collaboration (INSDC)](https://www.insdc.org/)** brings together three major nucleotide sequence databases:

- **[GenBank](https://www.ncbi.nlm.nih.gov/genbank/)** — hosted by the US National Center for Biotechnology Information (NCBI)
- **[European Nucleotide Archive (ENA)](https://www.ebi.ac.uk/ena/)** — hosted by EMBL-EBI
- **[DDBJ](https://www.ddbj.nig.ac.jp/)** — hosted by the DNA Data Bank of Japan

These organisations exchange data and operate as a coordinated international infrastructure. This means that researchers submitting sequence data to one member of the collaboration are participating in a much broader discovery and reuse ecosystem. There are also important specialised resources within this ecosystem, such as the **[Sequence Read Archive (SRA)](https://www.ncbi.nlm.nih.gov/sra/)** for raw sequencing data and **[GEO](https://www.ncbi.nlm.nih.gov/geo/)** for functional genomics data.

Also consider that where applicable, a species list derived from genomic data can be published to GBIF[^4].

## So where should you publish?

Rather than asking only:

> *Which repository should I use?*

I suggest asking:

> *Which discovery services are likely to be used by the people who might reuse my data?*

If your data are about biodiversity, for example, you should consider whether your chosen repository contributes metadata to GBIF. If they are marine data, check whether they will be discoverable through EMODnet. For Arctic data, look at the relevant Arctic discovery infrastructure. For genomic sequence data, the INSDC ecosystem may be much more important than a generic repository. Many repositories contribute to several of these, if you have Arctic marine biodiversity data for example.

In other words, **don't just choose a place to store your data. Choose a route to the people who might use them.**

## References

[^1]: CrowdFlower. *2016 Data Science Report*. CrowdFlower. <https://visit.figure-eight.com/rs/416-ZBE-142/images/CrowdFlower_DataScienceReport.pdf>.

[^2]: Davenport, T. H., and Patil, D. J. *Data Scientist: The Sexiest Job of the 21st Century*. Harvard Business Review, 2012. <https://hbr.org/2012/10/data-scientist-the-sexiest-job-of-the-21st-century>.

[^3]: Wilkinson, M. D., Dumontier, M., Aalbersberg, I. J. et al. *The FAIR Guiding Principles for scientific data management and stewardship*. Scientific Data 3, 160018 (2016). <https://doi.org/10.1038/sdata.2016.18>.

[^4]: Abarenkov K, Andersson AF, Bissett A, Finstad AG, Fossøy F, Grosjean M, Hope M, Jeppesen TS, Kõljalg U, Lundin D, Nilsson RN, Prager M, Provoost P, Schigel D, Suominen S, Svenningsen C & Frøslev TG (2023) *Publishing DNA-derived data through biodiversity data platforms*, v1.4. Copenhagen: GBIF Secretariat. https://doi.org/10.35035/doc-vf1a-nr22.
