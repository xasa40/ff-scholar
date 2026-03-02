// #settings.typ
#import "@preview/drafting:0.2.2": *
#import "@preview/hydra:0.6.2": hydra
#import "utils.typ": *

// ============================================================
// Edit these to customize your thesis
// ============================================================

#let body-font = "New Computer Modern"

#let page-setup(doc) = {
  
  set page(
    paper: "a4",
    margin: (left: 3cm, right: 2.5cm, top: 2.5cm, bottom: 2.5cm),
    // Nastavení margins podle metodických pokynů FF UK by bylo:
    // margin: (left: 35mm, right: 15mm, top: 25mm, bottom: 20mm),
    number-align: center,
    numbering: "1",
    header: context {
      if calc.odd(here().page()) {
        align(right, emph(hydra(1)))
      } else {
        align(left, emph(hydra(2)))
      }
    },
  )
  
  set smartquote(enabled: true)
  set cite(
    style: "chicago-notes.csl",
  )
  set bibliography(
    style: "chicago-notes-bibliography.csl",
  )
  set footnote.entry(
    //indent: 2em
    indent: 0em, // no indent of footnotes - not standard, but I like it a lot - hotter than hot
  )
  // Nastavení písma - patkové písmo (Times New Roman ekvivalent)
  set text(
    font: body-font,  // nebo "New Computer Modern", "TeX Gyre Termes"
    size: 12pt,
    lang: "cs",
    hyphenate: true
  )
  // Nastavení odstavců
  set par(
    justify: true,
    leading: 0.65em,  // odpovídá řádkování 1.5
    spacing: 0.65em,  // Set to match leading for uniform line spacing across paragraphs
    first-line-indent: 1cm
  )
  // Nastavení nadpisů
  set heading(numbering: "1.1.1.1.")
    
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    pad(top: 1cm, bottom: 0.5cm)[
      #text(size: 16pt, weight: "bold")[
        #if it.numbering != none {
          counter(heading).display() + ""
        }
        #it.body
      ]
    ]
  }

  show heading.where(level: 2): it => {
    pad(top: 0.5cm, bottom: 0.3cm)[
      #text(size: 14pt, weight: "bold")[
        #if it.numbering != none {
          counter(heading).display() + ""
        }
        #it.body
      ]
    ]
  }

  show heading.where(level: 3): it => {
    pad(top: 0.3cm, bottom: 0.2cm)[
      #text(size: 12pt, weight: "bold")[
        #if it.numbering != none {
          counter(heading).display() + ""
        }
        #it.body
      ]
    ]
  }

  show heading.where(level: 4): it => {
    pad(top: 0.2cm, bottom: 0.1cm)[
      #text(size: 12pt, weight: "bold", style: "italic")[
        #if it.numbering != none {
          counter(heading).display() + ""
        }
        #it.body
      ]
    ]
  }
  
  doc
}

