# ff-scholar

An unofficial [Typst (modern LaTeX alternative)](https://typst.app/) template for Bachelor's (Bc.) and Master's (Mgr.) theses at the **Faculty of Arts, Charles University, (FF UK)** designed specifically with **beginners** in mind, this template is meant primarily for online use via the Typst web app. 

## Why use this template?
* **Fully Formatted:** Pre-configured to meet general FF UK thesis standards. 
* **Painless Bibliography:** Typst handles citations and your bibliography automatically. FF UK citation style pre-configured.

This template is primarily intended for FF UK (Faculty of Arts) as it were made according to the [intructions and officially propagated template](https://www.ff.cuni.cz/studium/bakalarske-a-magisterske-studium/uspesne-dokonceni-studia/zaverecne-prace/metodicke-pokyny-doporucena-formalni-uprava-zaverecne-kvalifikacni-prace/) although it can also be used elsewhere too. 

## Getting Started

You don't need to install anything on your computer to use this template. Everything runs in your browser if you use [Typst](typst.app) online.

1. **Download the template:** Click on the green **"<> Code"** button at the top of this repository and select **"Download ZIP"**.
2. **Extract the files:** Unzip the downloaded folder somewhere on your computer.
3. **Set up Typst:** Open [typst.app](https://typst.app/) in your browser, log in or create an account.
4. **Create a project:** Click on **"Empty Document, Start form scratch"** to create a new, empty project.
5. **Upload the files:** In the left sidebar of your new Typst project, you will see a file explorer (Container icon with "Explore files" text showing upon hover). Drag and drop all the unzipped folders and files from your computer into this sidebar. 
6. **Final touch:** Feel free to delete the `LICENSE` `README` and `TODO` file. 
7. **Write:** Open the `main.typ` file and **start writing your thesis**. Make sure you also have preview set for this file - the *eye icon* next to the file.

## Using the Template
Read the comments in the file (in Typst they start with `//`) and start using it. 

### How to do Citations
You don't need to manually write out your bibliography at the end of the document or while citing. To cite properly:

1. Find the **BibTeX** citation format for the source you are referencing (you can easily find these on Google Scholar, JSTOR, or your library's catalog).
2. Paste that BibTeX entry into the `bibliography.bib` file.
3. Look at the very first line of the entry you pasted (e.g., `@book{smith2024...`). The `smith2024` is your citation key.
4. In your text (`main.typ`), simply type `@smith2024[page number]` to generate an automatic citation. The template will automatically add it to the bibliography at the end of your PDF.

*(If you are struggling to find a BibTeX format, you can fill the entry manually, use AI tools (check after!) for generation or use zotero (**- Learning zotero is HIGHLY recommended in the future!**)*

## Credit
- [ox-scholar](https://github.com/fcelli/ox-scholar) Typst template
- user [1000101](https://github.com/1000101)

> **Disclaimer:** This project is a work in progress. It is not officially endorsed by the university. Please always double-check the final output against your specific department's guidelines. If anything breaks, or if you'd like to improve the template, contributions are welcome!
