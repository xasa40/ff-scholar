// ============================================================
// WRITE YOUR THESIS HERE.
// Don't touch the '#import' and '#show' lines; keep the 
// '#heading(numbering: none)' with Úvod and Závěr so that 
// they have no number and yet are in the outline.
// Don't touch #bibliography and - 
// DON'T FORGET TO COMPILE EVERYTHING AND SUBMIT THE FINAL, COMPLETE PDF
// ============================================================
#import "./src/settings.typ": *
#show: page-setup

#heading(numbering: none)[Úvod]
#lorem(200)

= Název kapitoly
#lorem(200)

#lorem(200)

#lorem(200)

#lorem(200)

#lorem(250)

== Název podkapitoly
#lorem(200)

#lorem(200)

#lorem(200)
=== Název pod-pod-kapitoly
#lorem(200)

#lorem(200)

#lorem(200)

== Název další podkapitoly
#lorem(200)

#lorem(200)

#lorem(200)

#lorem(200)

#lorem(200)

#heading(numbering: none)[Závěr]
#lorem(80)

// --- Bibliography ---
#pagebreak(weak: true)
#bibliography("02_bibliography.bib", title:"Seznam literatury", style: "chicago-notes")

// DON'T FORGET TO COMPILE EVERYTHING AND SUBMIT THE FINAL, COMPLETE PDF
// DON'T FORGET TO COMPILE EVERYTHING AND SUBMIT THE FINAL, COMPLETE PDF
// DON'T FORGET TO COMPILE EVERYTHING AND SUBMIT THE FINAL, COMPLETE PDF
