---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: false
tags: ["NPC"] # Keeping macro categories like NPC; dropping 'The City'

# Structural Metadata
type: "white-pages"
era_focus: "in-time" # prequel, in-time, aftermath

# Affiliations (Replacing the old affiliation tags)
affiliations:
  - faction: "Barrabi"
    status: "Active" # Active, Defected, Deceased, Unknown
  - faction: "Nephandi"
    status: "Hidden"

# The Metadata Array for AI relationship mapping
connections:
  - target: ""      # e.g., "/whitepages/judas_maldito/"
    type: ""        # e.g., Collaborator, Enemy, Mentor, Asset
    notes: ""       # e.g., "Did design work for the gateway."
---

Write the public/basic summary here.

{{< storyteller >}}
{{< /storyteller >}}

{{< inspiration >}}
- [Link Name](URL)
{{< /inspiration >}}
