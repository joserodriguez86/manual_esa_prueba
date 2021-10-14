# Install Packages and its dependencies if it is not already installed # Load the Packages into session

packs <- c("here", "bookdown", "devtools" , "RefManageR", "knitcitations", "rcrossref", "remotes", "kableExtra", "xtable", "tidyverse", "tidyxl", "citr", "rmarkdown", "htmltools", "kableExtra", "acs", "aws.s3", "aws.polly", "text2speech", "tuneR", "magrittr", "ari", "googleLanguageR", "googledrive", "readtext", "Rutils", "pander", "vembedr", "ari", "eph", "modeest", "car", "summarytools", "occupar", "revealjs")


packs_load <- function(x){
  for (i in x) {
    #require returns TRUE invisibly if it was able to load package
    if (!base::require(i, character.only = TRUE)) {
      #  If package was not able to be loaded then re-install
      install.packages(i, dependencies = TRUE)
      #  Load package after installing
      sapply(base::library(i, character.only = TRUE))
    }
  }
}

#Install/Load the Package

packs_load(packs)

devtools::install_github("DiogoFerrari/occupar")


# Set working directory to the Project Directory.

here::here()



#bib_path <- "/Users/nxs851/GitHub/biblio/tesis.bib"

#tesis.bib <- ReadBib(bib_path, check = TRUE)


#BibOptions(check.entries = FALSE, style = "markdown", bib.style = "alphabetic", cite.style = 'alphabetic')

#system("git submodule add https://github.com/nsacco/biblio.git")

#download.file("https://raw.githubusercontent.com/nsacco/biblio/master/Biblio.bib?token=ACA5FXYOHUUEDKNKDEXG2UC7PXCGC", "biblio/Biblio.bib")

#Automatically create a bib database for R packages
#knitr::write_bib(packs),
#								 file = "/unidades/packages.bib",
#								 tweak = TRUE,
#								 width = NULL,
#								 prefix = getOption("knitr.bib.prefix", "R-")

# Build book
#rmarkdown::render_site(output_format = 'bookdown::pdf_book', encoding = 'UTF-8')

# Clean all files
#rmarkdown::clean_site()


# Prueba googledrive

#View(drive_find(n_max = 30))

#drive_get(id = "1maG6BdIEwspSE1OgalWwV6I-1rkde1MI")

