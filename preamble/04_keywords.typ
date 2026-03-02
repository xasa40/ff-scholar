// ============================================================
// Abstracts page. Pulls data from 00_set_everything_up.typ
// ============================================================

#import "../00_setup.typ": *
#import "../src/settings.typ": *
#set text(font: body-font)
#set par(
    justify: true,
    leading: 0.65em,  // odpovídá řádkování 1.5
    spacing: 0.65em,  // Set to match leading for uniform line spacing across paragraphs
    first-line-indent: 1cm
  )

#heading(numbering: none, outlined: false)[Klíčová slova]
#v(0.5cm)
#keywords_cz

#v(1cm)

#heading(numbering: none, outlined: false)[Key words]
#v(0.5cm)
#keywords_en

#pagebreak(to: "odd")  // Weak even-page break for Keywords

