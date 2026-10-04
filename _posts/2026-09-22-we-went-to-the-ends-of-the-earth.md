---
title: "We Went to the Ends of the Earth. What Did We Do With Our Data?"
excerpt: "We go to extraordinary lengths to collect scientific data. Shouldn’t we be equally ambitious about how we publish and share what we bring home?"
last_modified_at: 2026-09-28
categories:
  - Blog
tags:
  - expeditions
  - discovery
  - granularity
---

I enjoy watching documentaries about scientific expeditions. Whether it is a voyage deep into the Amazon basin[^1] or a mission across Greenland with an elite climbing team[^2], I am fascinated by how much some of us are prepared to strive in the interest of advancing our collective knowledge. Such expeditions are not for the faint hearted, often testing the limits of human endurance, adaptability, and technology.

I have been incredibly fortunate to participate in several research expeditions deep into the sea ice covering the Northern Barents Sea, aboard Norway’s flagship icebreaker R.V. Kronprins Håkon. I remember vividly the first time I crossed over the ice edge, leaving behind the open water and into a landscape that felt altogether otherworldly to me. A few kilometres into the ice, the waves previously rocking the boat from side to side had dampened, leaving only low-frequency swells that passed through the ice like someone wafting a giant carpet beneath us, accompanied by an occasional rather eerie creaking sound from the ice. A few kilometres further, we walked out onto the ice. It appeared so still and expansive that it was hard to fathom that only a metre or so of ice separated me from a few hundred metres of deathly cold water.

## Value for money?

Such experiences don’t come cheap. R.V. Kronprins Håkon cost the Norwegian state NOK 1.4 billion[^3] (approximately €175 million). There are significant economic costs associated with a project renting the vessel. Beyond the finances, the vessel emits around 60 tonnes of CO₂ per day—roughly equivalent to the annual emissions of 13 passenger cars—more when breaking through the ice. And a full-to-capacity cruise of 55 personnel[^4] represents a lot of person-hours. I can only imagine that expeditions through the Amazon are not cheap either.

I do not point out these figures to portray science as some money-thirsty, resource intensive industry. Competition for funding can be fierce which, in an ideal world, means only the most worthwhile, impactful research is funded. But science is not cheap, and I think it is fair that funding bodies and society in general (a lot of science is funded by the taxpayer) demand the maximum possible return from their investment.

So when watching a documentary, I often wonder where the data collected ended up. After all, these expeditions often venture into the most remote and inaccessible places on the planet, where only a very privileged few have been lucky enough to work. Are the data freely available? Are they easy for someone to find? Are they described and formatted in a way that is broadly understandable? How often are the data being reused, by whom, and what for? Similar data can be used in different contexts to answer very different questions. Given the extraordinary lengths that scientists are prepared to go to collect data, surely they are also prepared to invest the time, effort and funding needed to publish those data in a way that maximises their potential for reuse… right?

## Requirements for Effective Discovery

The best practices for managing data are still evolving, and their uptake is far from universal. Even where data are made available, there can be a substantial difference between being published and being genuinely reusable. Data may only be included as supplementary material to a paper, making them difficult to find unless you already know the paper exists. They may be deposited in a repository that is difficult to search through, or described with insufficient metadata to make it clear what they contain, where they came from or how they were collected. And even when a dataset can be found and understood, it may be provided in a format that makes it difficult to combine with other data or use in a different context. In other words, making data available is only the beginning. If the data cannot be readily found, accessed, understood and reused, we limit the scientific return on the considerable effort, time and resources invested in collecting them.

There is a temptation to publish all the data collected during an expedition together. The reasoning behind this is obvious. Those most likely to reuse the data in the short term are those involved or familiar with an expedition. It is therefore convenient that all the data are available in one place. However, it is only a fortunate few whose expeditions are turned into TV documentaries. Most expeditions don’t gain such visibility. But their data are still useful, so how do we maximise how easy it is for someone to find and reuse them?

Imagine you are interested in sea water temperature data covering the whole of the Atlantic Ocean for a given summer. Sea water temperature is measured by almost every oceanographic research expedition, by biologists, chemists and geophysicists alike. It is measured by autonomous devices such as Argo floats that drift through the ocean, and by moored buoys. It is measured from space using satellites, and even by sensors attached to marine mammals that transmit the data when the animal surfaces.

Someone should not have to be aware of every project, expedition or mooring to find all the sea water temperature data that they are looking for. They should instead be able to search through catalogues that behave in exactly the same way as online shopping websites. Instead of filtering by price or manufacturer, someone interested in geoscientific data might want to be able to filter based on when and where the data were collected, perhaps by drawing a bounding polygon on a map. They might refine their search using keywords that describe what variables each dataset contains, or based on the people, institutions, or projects involved in collecting the data. We refer to this information as discovery metadata - information describing a dataset that helps someone find it.

## Why Granularity Matters

How effective a search portal is depends on the level of detail and consistency of its discovery metadata. For geoscientific data, discovery metadata should include the dataset’s bounding coordinates, both in space and time. Consider a dataset covering the whole of Greenland. Interestingly, Greenland extends far enough in all directions that it lies to the north, south, east and west of Iceland. Consequently, a bounding box encompassing all of Greenland will also encompass Iceland, potentially giving the misleading impression that the dataset contains data from Iceland. A bounding polygon can be used instead of, or in addition to, a bounding box. But this still does not portray where within the polygon data were sampled. It is often impossible to know the precise coordinates sampled without downloading and opening the dataset first.

Publishing data from individual locations—or even individual sampling events at the same location—as separate datasets allows much more detailed information to be encoded in the discovery metadata, making the data easier to find. Different variables may have been collected at different locations, by different people, and at different dates and times. Someone searching for data can then filter and access only the data they are interested in, reducing the time and effort required, both for people and machines, to access and filter the data. What’s more, all the relevant data from multiple expeditions or projects can be found through a single query.

## Keeping the Whole Without Losing the Parts

There is no need to choose between fine-grained discovery and presenting an expedition as a coherent whole. It is, of course, still important to highlight and credit the expedition or project. Dividing data into multiple datasets for publication need not impede this. An expedition can still have a shared landing page showcasing all the data collected in one place. Many repositories also support publishing datasets as collections. In most discovery metadata standards, this is done using a virtual dataset containing discovery metadata for the collection as a whole and linking to the individual datasets within it. If the data are published in standardised, machine-readable formats, repositories can also build software to aggregate multiple datasets on demand, allowing users to access the entire collection—or their uniquely selected subset—as a single file.

## The Return on Extraordinary Effort

We go to extraordinary lengths to collect scientific data. We travel to the ends of the Earth, work in dangerous and uncomfortable environments, deploy expensive instruments, and dedicate enormous amounts of time, money and technology to obtaining observations that cannot easily be collected any other way. This raises a simple question: what can we do to ensure that those observations are still useful to someone who was not there?

An expedition ends when the ship returns to port, the aircraft lands, or the field team comes home. The scientific value of the data should not end there. If we make data genuinely discoverable and reusable, an observation collected once can continue to contribute to research long after the expedition that produced it has been forgotten.

## References

[^1]: National Geographic Society. The Andes to the Atlantic. National Geographic Society. <https://nationalgeographic.org/explore/programs/perpetual-planet/expedition-amazon?utm_source=chatgpt.com>.

[^2]: National Geographic. Arctic Ascent with Alex Honnold. National Geographic. <https://www.natgeotv.com/za/shows/natgeo/arctic-ascent-with-alex-honnold>.

[^3]: Havforskningsinstituttet. Kronprins Haakon. <https://www.hi.no/hi/om-oss/fasiliteter/vare-fartoy/kronprins-haakon>.

[^4]: Havforskningsinstituttet. Kronprins Håkon: About the vessel. <https://kronprinshaakon.hi.no/en/havforskningsinstituttet/projects/kronprins-haakon/about-the-vessel/world-class-vessel>.
