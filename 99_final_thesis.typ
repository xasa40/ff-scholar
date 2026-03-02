// ============================================================
// Run: typst compile 99_render_everything.typ
// This is the only file you compile. Don't edit it.
// ============================================================

#import "src/settings.typ": *
#import "src/utils.typ": *


// --- Preamble (roman page numbers, no heading numbering) ---

#include "preamble/00_title_page.typ"
#include "preamble/01_acknowledgement.typ"
#include "preamble/02_declaration.typ"
#include "preamble/03_abstracts.typ"
#include "preamble/04_keywords.typ"

// --- Table of contents ---
#set text(font: body-font)
#outline(title: "Obsah", indent: auto)
#pagebreak(weak: true, to: "odd")

// --- Main text (arabic page numbers) ---
#set page(numbering: "1")
#counter(page).update(11)

#include "01_thesis_text.typ"

