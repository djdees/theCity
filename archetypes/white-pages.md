---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: true
tags: ["NPC"] # Keeping macro categories like NPC; dropping 'The City'

# Unique Identifier for AI linking & URLs (e.g., "john-maldito", "john-the-cop")
slug: "{{ .Name }}"

# Structural Metadata
type: "white-pages"
wod_type: ""      # Mage, Werewolf, Human, Other
# Lifecycle status for each era: Active, Inactive, Rumored, Unknown
era_focus:
  prequel:   ""   # The focus of the prequel story
  in-time:   ""   # Still around in the main campaign
  aftermath: ""   # Missing, dead, an echo, or a ghost?

# Affiliations (Replacing the old affiliation tags)
affiliations:
  - faction: ""
    status: "Active" # Active, Defected, Deceased, Unknown
  - faction: "Nephandi"
    status: "Hidden"

# The Metadata Array for AI relationship mapping
connections:
  - target: ""      # e.g., "/white-pages/judas_maldito/"
    era: ""         # Explicitly tagging the era of the connection
    type: ""        # e.g., Collaborator, Enemy, Mentor, Asset
    notes: ""       # e.g., "Did design work for the gateway."
---

Write your general, timeless overview of the character up here.

{{< storyteller "The Prequel Era (The Early Days)" >}}
This is where you write the snippets focused entirely on his early life and how he earned his name.
{{< /storyteller >}}

{{< storyteller "In-Time Era (1990s Campaign)" >}}
AR's driving goal is to open a gateway to his masters so that they can dance with him. [Judas](/white-pages/judas_maldito/) did some design work. [cite: 3]

He managed a small gate in the central park, closed by [Judas](/white-pages/judas_maldito/) and John (add link) with the support of the [Sept of the Blue Box](/yellow-pages/blueboxsep) and [The Sanctum of Hidden Scars](/yellow-pages/sanctumofhiddenscars/). [cite: 3]
{{< /storyteller >}}

{{< storyteller "The Aftermath (Post-1999)" >}}
The current explorations, continuations, or rumors of where his ghost or legacy lingers.
{{< /storyteller >}}

{{< inspiration >}}
- [Link Name](URL)
{{< /inspiration >}}
