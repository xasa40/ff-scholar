// ============================================================
// Declaration page. Pulls data from 00_set_everything_up.typ
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
#v(1fr)

// 2. The Heading
#heading(numbering: none, outlined: false)[Prohlášení]
#v(0.5cm)
#par(justify: true)[
  #declaration
]
#v(2.5cm) 
#grid(
  columns: (1fr, auto), // 1fr pushes the second column entirely to the right
  align(left)[
    #declaration_time_and_date
  ],
  align(center)[
    .............................................................. \
    Jméno a příjmení
  ]
)
#pagebreak(to: "odd")  // Weak even-page break for Keywords
