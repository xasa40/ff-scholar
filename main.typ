#import "src/template.typ": *
#import "src/utils.typ": *

// ============================================================
// FILL IN YOUR DETAILS HERE
// ============================================================
#show: thesis.with(
  university: [Univerzita Karlova],
  faculty: [Filozofická fakulta],
  department: [Název ústavu nebo katedry],
  field: [Název oboru],
  thesis_type: [Bakalářská práce],
  author: [Jméno Příjmení],
  title: [Název bakalářské práce],
  title_en: [Name of the Thesis in English],
  city: [City],
  year: [Year],
  supervisor_title: [vedoucí], //supervisor for EN
  supervisor: [prof. PhDr. Jméno Příjmení, PhD.],

  // if you delete both title and acknowledgement and leave only "[]" the sections will be deleted
  // and extra pages won't be created

  acknowledgement_title: [Poděkování],
  acknowledgement: [Děkuji.],

  declaration_title: [Prohlášení],
  declaration: [
    Prohlašuji, že jsem bakalářskou/diplomovou práci vypracoval/a samostatně, že jsem řádně citoval/a všechny použité prameny a literaturu a že nebyla předložena jako splnění studijní povinnosti v rámci jiného studia nebo předložena k obhajobě v rámci jiného vysokoškolského studia či k získání jiného nebo stejného titulu.
  ],

  declaration_time_and_date: [
    City, Date
  ],

  abstract_title: [Abstrakt],
  abstract: [
    Lorem ipsum dolor sit amet, consectetuer adipiscing elit...
  ],

  abstract_title_2: [Abstract],
  abstract_2: [
    Lorem ipsum dolor sit amet, consectetuer adipiscing elit...
  ],

  keywords_title: [Klíčová slova],
  keywords: [
    Lorem, Ipsum, Dolor, Amet, Consectetur, Adipiscing
  ],

  keywords_title_2: [Key words],
  keywords_2: [
    Lorem, Ipsum, Dolor, Amet, Consectetur, Adipiscing 
  ],

  toc_title: [Obsah]
)

// ============================================================
// WRITE YOUR THESIS BELOW
//
// kapitoly se dělají v Typst "=". Pokud kapitola nemá být číslovaná, 
// vypadá jako ta následující - "#heading(numbering: none)[Úvod]"
// ============================================================

#heading(numbering: none)[Úvod] 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla quis diam. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? 

= Název kapitoly
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. @doe2024thesis[s. 21]  

== Název podkapitoly
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. #footnote[Poznámka pod čarou.]

=== Název pod-pod-kapitoly
Lorem #highlight[ipsum] dolor sit amet, consectetuer adipiscing elit. 

= Typst helper
In this chapter, guidance on making the writing process easier will be presented.

#heading(numbering: none)[Závěr]
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 

// --- Bibliography ---
#pagebreak(weak: true)
// You can change "Seznam literatury" to "References" or "Bibliography"
#bibliography("bibliography.bib", title: "Seznam literatury", style: "chicago-notes")
