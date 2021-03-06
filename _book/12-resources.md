# Resources

## Statistics and Statistical Inference Books 

Several students have asked for recommendations of resources to improve their background knowledge of statistical inference and modelling. Below are a few options that may or may not be suitable, depeding on your current level and what you are trying to achieve.

I have given a brief description of the level and target audience of each text. However, a quick skim through a section on a topic that you already know (such as linear regression) is usually the way to assess if the book is going to be a good fit and useful for you.

If you know of any gems that I have not included in this list, feel free to mention them in the responses!

**Mathematical Statistics and Data analysis - John A. Rice**

This text covers the basics of probability and statistics usually contained in the first couple of undergraduate stats courses. Generally the first university courses are a bit dry, building up the required knowledge to do interesting things. This book is slightly better than the average treatment in terms of readability and is fairly comprehensive, making it well suited as a reference text for all the stuff you might once have known but have now forgotten, or have never studied before.

**Essential medical statistics - Betty Kirkwood and Jonathan Sterne**

This book focuses on more advanced topics in statistisc, such as inference, hypothesis testing and modelling, but does so from an applications perspective. While all of the applications it uses are from medical statistics, the authors give sufficient context that you do not need to be familiar with this context before reading. This is a very readable book, with a moderate amount of mathematical detail.

**Core Statistics - Simon Wood**

This book gives an introduction to the core topics in statistics aimed at new graduate-level students. It is mathematically dense but written in an apprachable manner and (unsurprisingly) covers all the core ideas of statistics. This means that is often a good source to get an overview of a topic and to cover the key points in that area quickly. It is probably wise to supplement this with some readings from a more applied to see worked examples and to have a more detailed text to hand for topics that you need explaining in greater detail.

**In All Likelihood - Yudi Pawitan**

This book focuses entirely on likelihood inference and covers both theory and applications in a great deal of detail. I highly recommend this to supplement frequentist topics covered in core statistics and the elements of statistical learning. It does build up from very little assumed knowledge but also goes on to cover some very advanced topics in later chapters.

**Kendall's advanced theory of statistics.**

An alternative to In All Likelihood, aimed at a similar audience and level. Split over several volumes this is good to do a deep-dive into a particular topic but probably not one to try and read cover to cover!

**Bayesian Statistics**

You don't need to worry about these for now, since we are only considering frequentist approaches to inference in this course. However, I would be remiss to not include some Bayesian texts and leave you with the impression that classical or frequentist approaches to statistics are the only option. Many of the topics we cover can be considered from a Bayesian perspective, where instead of considering our model parameters as fixed and unknown quantities, we instead consider them as random variables and use probability distributions to describe our beliefs about their values. 

The following books may be useful during or after the Bayesian inference course. The former is more theoretical and the latter is more applied.

*Kendall's advanced theory of statistics. Vol. 2B, Bayesian inference.*

*Bayesian Data Analysis - Gelman et al.* 

---------------------------------------------------------------------------------------

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



