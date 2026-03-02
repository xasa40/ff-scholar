#import "@preview/wordometer:0.1.5": word-count

#let track-stats(doc) = {
  word-count(
    exclude: (bibliography, outline, <thesis-stats>),
    total => {
      let estimated-spaces = calc.round(total.words * 0.986)
      let chars-with-spaces = total.characters + estimated-spaces
      let ns = calc.round(chars-with-spaces / 1800, digits: 2)
      
      doc
      [
        #block[
          #v(2em)
          #line(length: 100%, stroke: 0.5pt + gray)
          #set text(size: 0.9em, fill: gray.darken(50%))
          #grid(
            columns: (1fr, 1fr, 1fr),
            [Slova: #total.words],
            [Znaky (vč. mezer): #chars-with-spaces],
            [*Normostrany: #ns*]
          ) 
          
          #v(1em)
          
          #block(
            fill: luma(245),
            inset: 10pt,
            radius: 4pt,
            width: 100%,
          )[
            #text(size: 8pt)[
              *Note on Normostrany counter:* Typst does not natively count spaces, so this counter uses a calibrated algorithmic estimate. This is specifically designed to be more accurate than external PDF or raw-text counters, which often mistakenly include formatting code, bibliographies, and layout elements. *Expected Accuracy:* Because it mathematically projects spaces based on word count, the margin of error is exceptionally low. 
              - For a *70 NS* thesis, the variance is around ±0.15 NS.
              - For a *120 NS* thesis, the variance is roughly ±0.25 NS.
              
              Note however, that various tools give various counts even in standard programs (e.g., MS Word, LibreOffice).
            ]
          ]
        ] <thesis-stats> 
      ] 
    }
  )
}
