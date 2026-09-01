---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: false
tags: ["Location"]

# Website Architecture (Controls layout/section grouping)
type: "atlas"
slug: "{{ .Name }}"

# Geography Taxonomy: landmark, park, neighborhood, waterway, intersection
location_type: "" 

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
