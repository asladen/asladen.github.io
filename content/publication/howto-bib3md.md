# How to import publications from a BibTeX file

# The Academic theme for Hugo uses individual Markdown (.md) files for each publication, rather than reading directly from a BibTeX (.bib) file. To convert your `.bib` file into the correct format, you can use the `academic` command-line tool.

## 1. Install the Academic tool

The `academic` command is a Python tool. If you haven't installed it yet, open your terminal and run:

```bash
pip install -U academic
```
*Note: Depending on your Python installation, you may need to use `pip3` instead of `pip`.*

## 2. Prepare your BibTeX file

Make sure you have a BibTeX file (e.g., `my_publications.bib`) with the articles you want to add to your website.

**A safe workflow for adding new publications is to create a BibTeX file that contains *only* the new references you want to import.** This prevents any possibility of accidentally overwriting existing publication files.

## 3. Run the import command

Navigate to the root of your website in your terminal. For your project, this is:
```bash
cd /home/sladen/doc/inprogress/webpage/website/
```

Then, run the `academic import` command, pointing it to your BibTeX file. For example, if your file is in the website root:
```bash
academic import --bibtex my_publications.bib
```

This will create a new Markdown file for each entry in your BibTeX file inside the `content/publication/` directory.

## Optional arguments

You can use several options to customize the import process:
-   `--help`: Show the help message.
-   `--featured`: Flag publications as featured (to appear in the "Featured Publications" widget).
-   `--overwrite`: Overwrite existing publication files if they already exist.
-   `--publication-dir <DIR>`: Specify a different directory for publications (defaults to `content/publication`).
-   `--normalize`: Normalize tags by converting them to lowercase and capitalizing the first letter.
