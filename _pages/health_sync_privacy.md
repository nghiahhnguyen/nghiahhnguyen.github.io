---
layout: page
permalink: /health-sync/privacy/
title: Privacy policy — Obsidian Health Sync by Nghia H. Nguyen
description: How Obsidian Health Sync by Nghia H. Nguyen handles health data.
nav: false
# Reachable for Google's OAuth links, but kept out of search results.
noindex: true
sitemap: false
---

This privacy policy covers **Obsidian Health Sync by Nghia H. Nguyen**, described on its [home page]({{ '/health-sync/' | relative_url }}).

Publisher and data controller: Nghia H. Nguyen. Contact: huunghia160799@gmail.com.

Last updated: 14 August 2026.

## Scope of this policy

The app is a personal tool with exactly one user: its author. It authorizes a single Google Account and reads only that account's own data. It has no other users, no sign-up, and no mechanism by which another person's data could reach it.

## What data is accessed

The app requests these read-only Google Health scopes:

| Scope | What it reads |
| --- | --- |
| `googlehealth.sleep.readonly` | Sleep sessions: start and end time, time asleep, sleep stages |
| `googlehealth.activity_and_fitness.readonly` | Logged workouts and daily active minutes, including distance and average heart rate |
| `googlehealth.health_metrics_and_measurements.readonly` | Basic daily health metrics shown alongside the above |

No other scopes are requested. The app never requests write, update or delete access.

## How the data is used

Retrieved values are formatted into a small Markdown table and written into a dated note in the author's personal Obsidian vault, stored on the author's own computer. The data is used for no other purpose.

## How the data is stored and shared

Health data is stored only in that local Obsidian vault and in the author's own private backups of it. It is never sold, rented, published, or shared with any third party. There is no server, no hosted database, no analytics, no advertising, and no profiling. Nothing is sent to any destination other than the author's own machine.

OAuth credentials — the client identifier and the tokens Google issues — are held in a local configuration file on the same machine and are used solely to authenticate to Google's API.

## Limited Use disclosure

The use and transfer of information received from Google APIs adheres to the [Google API Services User Data Policy](https://developers.google.com/terms/api-services-user-data-policy), including the Limited Use requirements. Specifically, data obtained through these scopes is used only to provide the single feature described above; it is not transferred to others except as necessary to provide that feature, is not used for advertising, and is not read by humans other than the account owner.

## Retention and deletion

Entries remain in the author's notes until deleted by the author, who can delete any note or the whole vault at any time. Access can be revoked at any time from [Google Account permissions](https://myaccount.google.com/connections), which immediately stops all further access.

## Changes

Any change to this policy will be published on this page with a revised date.

## Contact

Questions about this policy: huunghia160799@gmail.com.
