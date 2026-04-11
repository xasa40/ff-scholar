#import "@preview/wordometer:0.1.5": word-count

#let track-stats(doc) = {
  word-count(
    exclude: (bibliography, outline, <thesis-stats>),
    total => {
      // Logic: In any sequence of N words, there are N-1 spaces.
      // We use calc.max(0, ...) to ensure empty docs don't return -1.
      let estimated-spaces = calc.max(0, total.words - 1)
      
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
              *Note on Normostrany counter:* This counter calculates standard pages based on the 1800-character Czech/Slovak norm. 
              - *Precision:* It uses the $N-1$ space rule ($"Total Characters" + "Words" - 1$), which aligns with standard PDF and web character counters.
              - *Exclusions:* Unlike raw text counters, this excludes the bibliography and outline to give you a true "content-only" count.
            ]
          ]
        ] <thesis-stats>
      ]
    }
  )
}
