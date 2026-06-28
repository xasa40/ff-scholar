#import "settings.typ": *
#import "counter.typ": track-stats
#import "utils.typ": *

#let thesis(
  university: [],
  faculty: [],
  department: [],
  field: [],
  thesis_type: [],
  author: [],
  title: [],
  title_en: [],
  city: [],
  year: [],
  supervisor_title: [],
  supervisor: [],
  
  acknowledgement_title: [],
  acknowledgement: [],
  
  declaration_title: [],
  declaration: [],
  declaration_time_and_date: [],
  
  abstract_title: [],
  abstract: [],
  abstract_title_2: [],
  abstract_2: [],
  
  keywords_title: [],
  keywords: [],
  keywords_title_2: [],
  keywords_2: [],
  
  toc_title: [],
  
  doc
) = {

  // Base styles for the Preamble (Sets binding margin, keeps headers/numbering hidden)
  set text(font: body-font, size: 12pt, lang: "cs", hyphenate: true)
  set page(
    paper: "a4",
    margin: (left: 3cm, right: 2.5cm, top: 2.5cm, bottom: 2.5cm), 
    numbering: none
  )
  set par(
    justify: true,
    leading: 0.65em,
    spacing: 0.65em,
    first-line-indent: 1cm
  )

  counter(page).update(1)

  // --- Helper function for preamble headings ---
  let preamble-heading(txt) = [
    #heading(numbering: none, outlined: false)[#txt]
    #v(0.5cm)
  ]

  // --- Title Page ---
  align(center)[
    #text(size: 11pt)[#university \ #faculty \ #department \ #field]
    #v(3cm)
    #text(size: 24pt)[#thesis_type]
    #v(3cm)
    #text(size: 20pt)[#author]
    #v(3cm)
    #text(size: 18pt)[#title]
    #v(0.5cm)
    #text(size: 14pt)[#title_en]
  ]
  
  v(1fr)
  
  align(bottom)[
    #text(size: 11pt)[#city #year]
    #h(1fr)
    #text(size: 11pt)[#supervisor_title: #supervisor]
  ]
  pagebreak(to: "odd")

  // --- Acknowledgements ---
// --- Acknowledgements ---
  if acknowledgement != none and acknowledgement != [] {
    align(bottom)[
      #preamble-heading(acknowledgement_title)
      #acknowledgement
    ]
    pagebreak(to: "odd")
  }

// --- Declaration ---
  if declaration != none and declaration != [] {
    v(1fr)
    preamble-heading(declaration_title)
    par(justify: true)[#declaration]
    v(2.5cm)
    grid(
      columns: (1fr, auto), 
      align(left)[#declaration_time_and_date],
      align(center)[
        .............................................................. \
        #author
      ]
    )
    pagebreak(to: "odd")
  }

  // --- Abstracts ---
  if (abstract != none and abstract != []) or (abstract_2 != none and abstract_2 != []) [
    #(if abstract != none and abstract != [] [
      #preamble-heading(abstract_title)
      #abstract
      #v(1cm)
    ])
    #(if abstract_2 != none and abstract_2 != [] [
      #preamble-heading(abstract_title_2)
      #abstract_2
    ])
    #pagebreak(to: "odd")
  ]

  // --- Keywords ---
  if (keywords != none and keywords != []) or (keywords_2 != none and keywords_2 != []) [
    #(if keywords != none and keywords != [] [
      #preamble-heading(keywords_title)
      #keywords
      #v(1cm)
    ])
    #(if keywords_2 != none and keywords_2 != [] [
      #preamble-heading(keywords_title_2)
      #keywords_2
    ])
    #pagebreak(to: "odd")
  ]

  // --- Table of Contents ---
  outline(title: toc_title, indent: auto)
  pagebreak(weak: true, to: "odd")

  // ==========================================
  // Main Body Setup
  // Activates numbering, headers, heading styles, and word-count
  // ==========================================
  show: page-setup
  show: track-stats

  doc
}
