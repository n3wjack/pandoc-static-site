
$CSS = "https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.classless.lime.min.css"
$OUTDIR = "_out"

foreach ($file in (ls site\*.md -Recurse)) {
	$outfile = ($file -replace ".md", ".html") 
	pandoc $file --output $outfile --standalone --css $CSS --include-before-body includes\before-body.html --include-after-body includes\after-body.html --include-in-header includes\header-include.html --verbose 

}

# Remove the output folder if it exists.
rmdir .\$OUTDIR\ -Recurse -Force -ErrorAction Ignore
# (Re)create it.
mkdir .\$OUTDIR | out-null
# Copy all files from site, excluding the .md files.
copy .\site\* -Recurse -Destination .\$OUTDIR\ -Exclude *.md
# Remove all .html files from the site folder. 
# WARNING: Don't put html files in there. Only markdown.
del -Path .\site\ -Filter *.html -Recurse -ErrorAction Ignore

