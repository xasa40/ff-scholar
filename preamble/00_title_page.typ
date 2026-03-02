// ============================================================
// Title page layout. Pulls data from 00_set_everything_up.typ
// ============================================================

#import "../00_set_everything_up.typ": *
#import "../src/settings.typ": *
#set text(font: body-font)

// 1. Center the top portion of the page
#align(center)[

  #text(size: 11pt)[
    #university \
    #faculty \
    #department \
    #field
  ]

  #v(3cm)
  #text(size: 24pt)[#thesis_type]
  #v(3cm)
  #text(size: 20pt)[#author]
  #v(3cm)
  #text(size: 18pt)[#title]
  #v(0.5cm)
  #text(size: 14pt)[#title_en]

] 

#v(1fr)

#align(bottom)[
  #text(size: 11pt)[#city #year]
  #h(1fr)
  #text(size: 11pt)[Vedoucí práce: #supervisor]
]

#pagebreak(to: "odd")  // Weak even-page break for Keywords
