---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: false
tags: ["Location"]

# Website Architecture
type: "yellow-pages"
slug: "{{ .Name }}"

# What kind of operation is this? 
# Examples: 
# - Mortal: bar, nightclub, school, corporation, police-station
# - Garou: caern, pack-territory, sept-holding
# - Mage: chantry, cabal-sanctum, node
entity_type: "business" 

# Super-type taxonomy to make AI filtering easy (Mortal, Garou, Mage, Vampire, Mixed)
supernatural_type: "Mortal"

# Faction control (Who implicitly owns or runs the joint?)
controlling_faction: "" 

# Lifecycle status for each era: Active, Inactive, Destroyed, Unknown
era_focus:
  prequel: ""
  in-time: ""
  aftermath: ""

connections:
  - target: ""
    type: ""
    era: ""
    notes: ""
---
