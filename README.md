
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Stat406

<!-- badges: start -->

[![R-CMD-check](https://github.com/UBC-STAT/stat-406-rpackage/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/UBC-STAT/stat-406-rpackage/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of Stat406 is to allow students enrolled in the course to
install all necessary packages at once. It also provides data and
documentation for all Homework Assignments and Labs for easy loading,
along with a few helper functions to verify system setup.

## Installation

You can install the development version of Stat406 from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("UBC-STAT/stat-406-rpackage", dependencies = TRUE)
```

## Start up

Once you have installed the package, you should run

``` r
test_latex_installation()
```

This will attempt to compile a small LaTeX document (in preparation for
homework and labs). If it works, you’ll see something like:

    #> ℹ Attempting to compile a LaTeX document.
    #> ✔ Attempting to compile a LaTeX document. ... done
    #> 
    #> ✔ LaTeX is available. You're good to go.

If it fails, you’ll see:

    #> ✖ LaTeX does not appear to be installed. But, it may have installed automatically
    #> 
    #> ── Next steps. ─────────────────────────────────────────────────────────────────
    #> ℹ Try running this function again.
    #> ℹ If you still see this message, run `tinytex::install_tinytex()`.

Ideally, LaTeX automatically installed itself. Try the function again.
You may need to restart `R`. You may need to restart your machine. If it
still doesn’t work, follow the instructions.

If you still get errors, then contact the teaching team on Slack or in
Office Hours.
