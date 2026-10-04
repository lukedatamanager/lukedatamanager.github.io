---
title: "How to Tell One Thing from Another"
excerpt: "Why good identifiers matter for linking records, reducing ambiguity, and making data dependable across systems."
last_modified_at: 2026-10-04
categories:
  - Blog
tags:
  - metadata
  - discovery
  - identifiers
---

At the end of February 2020, I started a temporary position as an Information Analyst at NHS Digital, joining a very friendly and welcoming team working with social care data. It was a dark yet fascinating time to begin working in healthcare. Cases of the newly identified COVID-19 disease were surging across Italy, some warning that an uncontrolled outbreak was imminent in the UK.

As a nation, we were emotionally and logistically unprepared for the realities of a pandemic. Even as the situation across Europe and Asia was becoming increasingly alarming, everyday life in the UK continued largely as normal. Crowded sporting events were still taking place, including the now infamously controversial Cheltenham Festival, which attracted hundreds of thousands of spectators. Within days, the WHO would declare a global pandemic, and just ten days later the UK government would announce a national lockdown.

**The data infrastructure of our healthcare sector was similarly unprepared.**

I was soon extracted from my work on social care data to join a small team tasked to answer a few, on the face of it, straightforward questions.

1. How many individuals had been tested for COVID-19?
2. How many had tested positive?

The results would be reported directly to a team that reported to the Prime Minister. We were fast-tracked through the necessary vetting process and provided with a database of hundreds of thousands of test records. Each record contained the individual's name, contact information and other personal details, along with the time, location and result of each test.

## Counting Without Reliable Identifiers

We immediately ran into problems. There are thousands of David Smiths and Susan Joneses in the UK, some born on the same day. The same individual might refer to themselves as David on their first test and Dave on their second a week later. On their third, now impatient with the process, they might misspell their name as Davd. People change their names, and are rather blasé on whether or not they include their middle names. Some individuals entered the test date as their date of birth. We all make mistakes! Others entered their own details multiple times, presumably on behalf of family or friends; at least, I would not willingly sit through that uncomfortable test four times in a matter of minutes.

Despite testing many combinations of the variables available, it was difficult to reliably identify a unique individual, and impossible to accurately quantify the total number of unique individuals tested. The error bars on our figures were huge.

## A Better Alternative

It did not have to be like this. In Norway, where I now live, every individual is assigned a unique identifier known as a *fødselsnummer* - a personal identity number usable across the public sector. The same identifier underpins interactions with banks, the tax authorities, healthcare services and government agencies.

Had the UK adopted a similar system, answering our seemingly simple questions would have been considerably easier. Rather than trying to determine whether David Smith, Dave Smith and Davd Smith were three different people or the same person, we could simply have counted the number of unique identifiers in the test records. Software could also have prevented someone from submitting a test result with the same identifier multiple times within a few minutes. 

The UK does have a mechanism for this. People can have an *NHS number*, a unique identifier used to link them to their healthcare records. However, not everyone has one, and its inclusion was not mandatory in the test records. Many of the records we received therefore contained no NHS number, forcing us to derive individuals’ identities from imperfect combinations of names, dates of birth and contact details. Being primarily a healthcare identifier, it also lacks the interoperability benefits of the Norwegian *fødselsnummer*. Ideally, an identifier should provide a reliable way to identify the same unique person, object or other entity across different systems and contexts.

Some identifiers are only unique within the system that created them. But data rarely stays in one system. They get shared, combined with other datasets and reused for purposes that may not have been anticipated when they were originally collected. 

## Universally Unique Identifiers

Ideally, an identifier should be unique wherever it is used, so that it unambiguously refers to one particular thing. A common way to achieve this is with a *universally unique identifier (UUID)*, which looks something like this:

```text
45d31f67-b84f-4189-846c-a1daddc128ca
```

UUIDs are not designed to be easy for humans to read; they are machine-friendly identifiers that quietly underpin countless digital systems, from databases and APIs to distributed services and software applications.

They are designed such that any two independently generated identifiers are extraordinarily unlikely to be the same. A UUID has 128 bits, giving around 3.4 × 10³⁸ possible values. To put that into perspective, even if we generated a trillion UUIDs every second, it would take around 10 quintillion (10 billion billion) years to generate every possible UUID — far longer than the 13.8 billion years that the universe has existed.

But the UUID itself tells us almost nothing about what it identifies, who created it or where we can find more information about it. Those things have to be provided separately.

One way to add this context is to associate the UUID with a naming authority. For example, an identifier might be written as 

```text
no.met.adc:45d31f67-b84f-4189-846c-a1daddc128ca
```

where *no.met.adc* identifies the authority responsible for assigning and maintaining the identifier. But this only helps if we can discover what *no.met.adc* means. The namespace itself therefore needs to be accompanied by metadata describing the organisation responsible for it, what the namespace is used for and where identifiers within it can be resolved.

This might be provided through a registry of naming authorities, through metadata published by the organisation itself, or through another trusted discovery service. The important point is that the identifier does not have to contain all of this information. It needs to be accompanied by enough metadata that a human or machine encountering it can unambiguously work out who is responsible for it and where to look for more information. In this sense, an identifier is not just a label. It is also a piece of discovery metadata.

## DOIs and Discovery

In other cases, discovery is embedded into the identifier itself. Consider a *DOI*, or Digital Object Identifier. The DOI `10.5194/essd-17-5983-2025`, for example, identifies a specific scientific publication. The `10.5194` identifies the organisation responsible for assigning the identifier, while the remainder identifies the particular object within that namespace. The identifier is intended to distinguish that publication from every other publication with a DOI. But it is useful for another reason: we know who is responsible for maintaining it and, importantly, it can lead us to the publication.

If you enter [https://doi.org/10.5194/essd-17-5983-2025](https://doi.org/10.5194/essd-17-5983-2025) into your web browser, it resolves to the current location of the publication. The webpage hosting the paper could change, the publisher could change its website, or the paper could be moved to another platform, but the DOI should always remain unchanged. The identifier therefore provides a route back to the object it identifies, rather than simply being a string that happens to be unique.

**DOIs are universally unique, persistent and resolvable.** 

## Names Change, Things Persist

Identifiers can be useful in addressing ambiguity and providing persistence when identifying almost anything. In 2011, the City of Manchester Stadium was renamed the Etihad Stadium. In 2015, the name of the highest mountain in the United States was restored to Denali from Mount McKinley, reflecting the mountain's long-established Koyukon Athabascan name. Twitter was officially rebranded as X in 2023.

The physical stadium, mountain and company remained unchanged. But consider how many systems had to be updated as a result of these renames; websites, ticketing systems, maps, travel information and databases. Imagine the number of hours spent updating records. Imagine how many dead webpages and broken links still exist today because they still use the old names.

Now imagine if these systems were built using persistent identifiers. Of course, I am not suggesting that we should start referring to everything using UUIDs. That would be impossible for humans to understand! Persistent identifiers are designed for machines and provide a way of referring to something without relying on its human-readable name.

*Wikidata*, a free, community-driven database of structured information, refers to the Etihad Stadium as:

[https://www.wikidata.org/wiki/Q48159](https://www.wikidata.org/wiki/Q48159)

An article, map or ticketing system could refer to the Wikidata identifier (or another persistent identifier) and use software to display the human-readable name to the viewer. Perhaps in the future, Manchester City will find a new stadium sponsor. Systems using the same identifier could then potentially display the new name automatically, with only the central record needing to be updated.

**The name is for humans; the identifier is for machines, enabling automation to make the humans’ lives easier.**

## The Question That Stayed With Me

Looking back, the questions we were asked in those first weeks of the pandemic really were simple questions. The difficulty was not in counting the records. It was in knowing which records belonged to the same person.

Years later, I still think about that experience whenever I encounter a system that relies on names, addresses or other human-readable information to identify things. Good identifiers are easy to overlook when they work well. But when they are missing, inconsistent or poorly designed, even the simplest questions can become surprisingly difficult to answer.






