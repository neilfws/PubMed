#!/bin/sh
DIR="`dirname $0`"

# download XML
echo "Fetching PubMed XML..."
Rscript $DIR/scripts/fetchXML.R
echo "Finished."

# download total publications per year
echo "Fetching total publication counts by year..."
Rscript $DIR/scripts/byyear.R
echo "Finished."

# knit the Rmd document
echo "Creating report..."
IN=$DIR/pmretract.Rmd
OUT="$DIR/../../data"
Rscript -e "library(rmarkdown); render('$IN', 'html_document')"
mv $DIR/pmretract.html $OUT
echo "Finished."

# git
