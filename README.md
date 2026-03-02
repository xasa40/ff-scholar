# ff-scholar

An unofficial [Typst](https://typst.app/) template for Bachelor's (Bc.) and Master's (Mgr.) theses at the **Faculty of Arts, Charles University, (FF UK)**.

Designed specifically with beginners in mind, this template is meant primarily for online use via the Typst web app. Focus on the content, not the formatting!

> **Note:** This project is a work in progress. It is not officially endorsed by the university. Please always double-check the final output against your specific department's guidelines. If anything breaks, or if you'd like to improve the template, contributions are welcome!

## Why use this template?

* **Fully Formatted:** Pre-configured to meet general FF UK thesis standards (margins, title pages, spacing, and fonts). 
* **Painless Bibliography:** Typst handles citations and your bibliography automatically. Everything is set up for FF UK citation styles.

This template is primarily intended for FF UK (Faculty of Arts) as it were made according to the [intructions and officially propagated template](https://www.ff.cuni.cz/studium/bakalarske-a-magisterske-studium/uspesne-dokonceni-studia/zaverecne-prace/metodicke-pokyny-doporucena-formalni-uprava-zaverecne-kvalifikacni-prace/) although it can also be used elsewhere too. Edit for using it for regular theses is also planned.

## Getting Started

You don't need to install anything on your computer to use this template. Everything runs in your browser.

1. **Download the template:** Click on the green **"<> Code"** button at the top of this repository and select **"Download ZIP"**.
2. **Extract the files:** Unzip the downloaded folder somewhere on your computer.
3. **Set up Typst:** Open [typst.app](https://typst.app/) in your browser, log in or create an account if you don't have one.
4. **Create a project:** Click on **"Empty Document, Start form scratch"** to create a new, empty project.
5. **Upload the files:** In the left sidebar of your new Typst project, you will see a file explorer (Container icon with "Explore files" text showing upon hover). Drag and drop all the unzipped folders and files from your computer into this sidebar. 
6. **Final touch:** Feel free to delete the automatically created "main.typ" file as well as "README.md" and "TODOS.md" files.
7. **Write:** Click the 01_thesis_text.typ and the "eye" icon next to it. Start writing. To see your full thesis, click the eye icon next to 99_compile_everything.typ file.

## Using the Template

To keep things organized and prevent you from scrolling through thousands of lines of code, the thesis is divided into multiple files and folders. 

### How to do Citations

You don't need to manually write out your bibliography at the end of the document. 

1. Find the **BibTeX** citation for the book or article you are referencing (you can easily find these on Google Scholar, JSTOR, or your library's catalog).
2. Paste that BibTeX entry into the bibliography file.
3. Look at the very first line of the entry you pasted (e.g., `@book{smith2024...`). The `smith2024` is your citation key.
4. In your text (`01_thesis_text.typ`), simply type `@smith2024` to generate an automatic citation. The template will automatically add it to the bibliography at the end of your PDF!

*(If you are struggling to find a BibTeX format, you can fill the entry manually, use AI tools to generate it (don't forget to check the output). **Learning ZOTERO is HIGHLY recommended in the future!**)*
