// ============================================================
// Run: typst compile 99_render_everything.typ
// This is the only file you compile. Don't edit it.
// ============================================================

#import "src/settings.typ": body-font 
#import "src/utils.typ": *

#set page(numbering: none) // counts the pages but does not insert numbers
#counter(page).update(1) 

#include "preamble/00_title_page.typ"
#include "preamble/01_acknowledgement.typ"
#include "preamble/02_declaration.typ"
#include "preamble/03_abstracts.typ"
#include "preamble/04_keywords.typ"

// --- Table of contents ---
#set text(font: body-font)
#outline(title: "Obsah", indent: auto)
#pagebreak(weak: true, to: "odd")

// --- Main text ---
#set page(numbering: "1")  // now START showing the page numbers

#include "01_thesis_text.typ"
