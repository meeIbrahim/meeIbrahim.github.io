---
layout: ../../layouts/MarkdownPostLayout.astro
title: "New Beginnings"
description: "Starting the journey of documenting my growth and learnings as an Engineer"
pubDate: "2025-01-04"
tags: ["meta"]
---

With this short post, I have officially begun the journey of **Write to Learn**; a personal blog-site where I can share my learning. As much as I wanted to start this off on the 1st of January 2025, I couldn't decide on what to post first. Eventually, I settled on sharing my candid thoughts and a bit about the tech stack for this site.

## Why Share My Learning Journey

The idea to create a blog came from a must-read book: [Effective Engineer by Edmond Lau](https://www.effectiveengineer.com/). The book talks about optimising for learning and suggests "**Write to teach**" to gain a deeper understanding of ideas. The idea resonated with me a lot since I love learning new things but always feared that I don't have enough insight and understanding. Writing has always been a powerful tool for me—a method my parents encouraged. Writing down concepts made them easier to grasp and offered an opportunity for deliberate and mindful reflection.

I decided on "**Write To Learn**" as the title and coded away for the past few days until I had a working website.

## The Tech Stack

The initial plan was to have a statically generated website with vanilla CSS that can evolve into a dynamic site with Tailwind CSS in the future. I decided on [AstroJS](https://astro.build/) as it meets the criteria and also has native support for markdown files that I can use to write the individual posts.

I am hosting the blog site on GitHub Pages for now and will keep it here for the foreseeable future. The pipeline, which uses GitHub Actions, currently includes a few checks with [ESLint](https://www.npmjs.com/package/eslint), [Prettier](https://www.npmjs.com/package/prettier), and [Vale](https://vale.sh/), but the plan is to include extensive testing via Automated UI Testing, Lighthouse, and unit/integration tests.

I will be using GitHub issues to track features and bugs for this project, and I would welcome any feedback or bugs in the form of a [new issue](https://github.com/meeIbrahim/meeIbrahim.github.io/issues) on GitHub.

<br>
That's it for today. See you in the next post! 👋
