// ============================================================
// Acknowledgements page. Pulls data from 00_set_everything_up.typ
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

#align(bottom)[
#heading(numbering: none, outlined: false)[Poděkování]
#v(0.5cm)
#acknowledgement]
#pagebreak(to: "odd")  // Weak even-page break for Keywords
