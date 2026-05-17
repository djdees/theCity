---
title: "Shiny_bits"
date: 2026-05-17T17:31:56-05:00
draft: true
tags: ["NPC"] # Keeping macro categories like NPC; dropping 'The City'

# Unique Identifier for AI linking & URLs (e.g., "john-maldito", "john-the-cop")
slug: "shiny_bits"

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

<section id="prequel-intel">
  <h3>The Prequel Era (The Early Days)</h3>
  {{< storyteller >}}
  This is where you write the snippets focused entirely on his early life and how he earned his name.
  {{< /storyteller >}}
</section>

<section id="intime-intel" style="display: none;">
  <h3>In-Time Era (1990s Campaign)</h3>
  {{< storyteller >}}
  What he was up to during the active sandbox campaign before things wrapped in '99.
  {{< /storyteller >}}
</section>

<section id="aftermath-intel" style="display: none;">
  <h3>The Aftermath (Post-1999)</h3>
  {{< storyteller >}}
  The current explorations, continuations, or rumors of where his ghost or legacy lingers.
  {{< /storyteller >}}
</section>

{{< inspiration >}}
- [Link Name](URL)
{{< /inspiration >}}
