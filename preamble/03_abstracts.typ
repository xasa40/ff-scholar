// ============================================================
// Abstracts page. Pulls data from 00_set_everything_up.typ
// ============================================================


#import "../00_set_everything_up.typ": *
#import "../src/settings.typ": *
#set text(font: body-font)
#set par(
    justify: true,
    leading: 0.65em,  // odpovídá řádkování 1.5
    spacing: 0.65em,  // Set to match leading for uniform line spacing across paragraphs
    first-line-indent: 1cm
  )


#heading(numbering: none, outlined: false)[Abstrakt]
#v(0.5cm)
#abstract_cz

#v(1cm)

#heading(numbering: none, outlined: false)[Abstract]
#v(0.5cm)
#abstract_en

#v(1cm)

#pagebreak(to: "odd")  // Weak even-page break for Keywords
