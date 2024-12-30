#!/bin/bash

POST_DIR="../src/pages/posts"
if [ -z "$1" ]; then
    echo "Usage: $0 <number_of_posts>"
    exit 1
fi

NUM_POSTS=$1

# Sample content arrays
TITLES=("Getting Started with Web Dev" "Understanding JavaScript" "CSS Tips and Tricks" "Backend Development" "Frontend Basics")
TOPICS=("web" "javascript" "css" "backend" "frontend")

mkdir -p "$POST_DIR"

for i in $(seq 1 $NUM_POSTS); do
    DATE_OFFSET=$((RANDOM % 30))
    POST_DATE=$(date -d "-$DATE_OFFSET days" +%Y-%m-%d)
    
    RAND_IDX=$((RANDOM % ${#TITLES[@]}))
    
    cat > "$POST_DIR/post-$i.md" << EOF
---
layout: ../../layouts/MarkdownPostLayout.astro
title: "${TITLES[$RAND_IDX]} #$i"
author: Astro Learner
description: "Learning about ${TOPICS[$RAND_IDX]}"
image:
    url: "https://docs.astro.build/default-og-image.png"
    alt: "The word astro against an illustration of planets and stars."
pubDate: $POST_DATE
tags: ["${TOPICS[$RAND_IDX]}", "tutorial"]
---

# ${TITLES[$RAND_IDX]}

This is an auto-generated post about ${TOPICS[$RAND_IDX]}.

## Key Points
- Important concept 1
- Important concept 2
- Important concept 3

Learn more about [${TOPICS[$RAND_IDX]}](https://example.com)
EOF

    echo "Generated post-$i.md"
done
