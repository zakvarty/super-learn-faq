# Writing Reports

## Including Code in a LaTeX document 

If you wish to include code within an assessment or as the appendix to a report 
then you can do so using either a code listing or a verbatim environment. 
Note that it is not standard practice to include raw code or output within the body of a report.  

I would recommend including the body and description of each function within the relevant question using a verbatim or code listing environment. 

[Overleaf Docs on Code Listings](https://www.overleaf.com/learn/latex/Code_listing)

[Overlead Docs on Verbatim Environments](https://www.overleaf.com/learn/latex/Code_listing#The_verbatim_environment)


## Publishing

HTML books can be published online, see: https://bookdown.org/yihui/bookdown/publishing.html

## 404 pages

By default, users will be directed to a 404 page if they try to access a webpage that cannot be found. If you'd like to customize your 404 page instead of using the default, you may add either a `_404.Rmd` or `_404.md` file to your project root and use code and/or Markdown syntax.

## Metadata for sharing

Bookdown HTML books will provide HTML metadata for social sharing on platforms like Twitter, Facebook, and LinkedIn, using information you provide in the `index.Rmd` YAML. To setup, set the `url` for your book and the path to your `cover-image` file. Your book's `title` and `description` are also used.


This `bs4_book` provides enhanced metadata for social sharing, so that each chapter shared will have a unique description, auto-generated based on the content.

Specify your book's source repository on GitHub as the `repo` in the `_output.yml` file, which allows users to view each chapter's source file or suggest an edit. Read more about the features of this output format here:

https://pkgs.rstudio.com/bookdown/reference/bs4_book.html

Or use:


```r
?bookdown::bs4_book
```



