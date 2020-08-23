#!/bin/bash

date=$(date +%Y-%m-%d)
template="template.md"
title="$@"
slug=$(echo -n $title | tr -Ccs [:alnum:] - | tr [:upper:] [:lower:] | sed -e 's/[^[:alnum:]]*$//' -e 's/^[^[:alnum:]]*//')
filename=${date}-${slug}.md

cat $template | sed \
    -e "s|TITLE|$title|" \
    -e "s|DATE|$date|" \
    > $filename