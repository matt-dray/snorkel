# snorkel 0.1.0

* Updated to release v0.1.0.
* Updated `.replace_text()` helper so that it includes the 'mid-string' element if the user uses any of the addin functions without having first selected some text (#1), also updated the function documentation to show the outcome of using a function if no text is selected first.
* Separated functions for (a) list insertion and (b) text replacement into their own sections on the reference page of the pkgdown website.

# snorkel 0.0.0.9002

* Changed names of functions inserting roxygen syntax to `rd_*()` from `snorkel_*()` (#4).
* Added function documentation (#3).
* Added pkgdown, added subheadings to function reference page.
* Added CONTRIBUTING and CODE_OF_CONDUCT.
* Updated README (#4) and badges.
* Addressed missing-breath bug in `breathe()`. 

# snorkel 0.0.0.9001

* Inserted line breaks into lists.

# snorkel 0.0.0.9000

* Created package.
* Added formatting scripts and .dcf file.
* Added NEWS, LICENSE, README, .gitignore.
* Added R-CMD check GitHub Action.
