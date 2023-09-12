

#' Test for installed LaTeX distribution
#'
#' This function tries to compile a small pdf document using LaTeX.
#' If it fails, you'll see some instructions to make sure that LaTeX is
#' installed on your system.
#'
#'
#'
#' @export
#'
test_latex_installation <- function() {
  tmp <- paste0(tempfile(), ".tex")
  writeLines(
    c(
      '\\documentclass{article}',
      '\\usepackage{amsthm,thmtools}',
      '\\usepackage{xcolor}',
      '\\usepackage{tikz}',
      '\\usepackage[framemethod=tikz]{mdframed}',
      '\\usepackage{pgf}',
      '\\begin{document}', 'Hello world!', '\\end{document}'
    ), tmp)

  tryCatch({
    cli::cli_process_start("Attempting to compile a LaTeX document.")
    tinytex::pdflatex(tmp)
    # stop("uh oh")
    cli::cli_process_done()
    cli::cli_alert_success("LaTeX is available. You're good to go.")},
    error = function(err) {
      cli::cli_process_failed()
      cli::cli_alert_danger(
        "LaTeX does not appear to be installed. But, it may have installed automatically"
      )
      cli::cli_h1("Next steps.")
      cli::cli_alert_info("Try running this function again.")
      cli::cli_alert_info("If you still see this message, run {.fn tinytex::install_tinytex()}.")
    })
}

