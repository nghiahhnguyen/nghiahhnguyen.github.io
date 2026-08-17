---
layout: page
permalink: /health-sync/
title: Obsidian Health Sync by Nghia H. Nguyen
description: A personal tool that copies my own Google Health data into my private Obsidian notes.
nav: false
# Google's OAuth review compares the consent-screen app name against this page's
# <title>, so it must be the app name alone, with no " | site name" suffix.
exact_title: true
# Reachable for Google's OAuth links, but kept out of search results.
noindex: true
sitemap: false
---

**Obsidian Health Sync by Nghia H. Nguyen** is a personal, single-user tool that copies my own health data from Google Health into my private [Obsidian](https://obsidian.md) notebook.

Publisher: Nghia H. Nguyen ([nghiahhnguyen.github.io]({{ site.url }})). Contact: huunghia160799@gmail.com.

## What it does

I keep a daily journal in Obsidian. Each night, a script on my own laptop adds that day's health summary to the day's note, so my sleep and exercise sit alongside everything else I record about the day.

To do that it reads three things from my Google Health account:

- **Sleep** — bedtime, wake time, time asleep, and time in each sleep stage
- **Exercise** — logged workouts, with start time, duration, distance and average heart rate
- **Active minutes** — whole-day light, moderate and vigorous activity, plus Active Zone Minutes

It writes that into a Markdown file on my laptop. That is the entire function of the app.

## Who can use it

Nobody else. This is not a product and there is no sign-up. It authorizes exactly one Google Account — my own — and reads only that account's data. It exists because the Fitbit Web API it previously used is being retired, and Google Health is the replacement.

## What it does not do

It does not write, modify or delete anything in Google Health; every scope it requests is read-only. It has no server, no database and no analytics. No health data is transmitted anywhere except from Google's API to my own computer.

## More information

- [Privacy policy]({{ '/health-sync/privacy/' | relative_url }})
- [Terms of service]({{ '/health-sync/terms/' | relative_url }})
