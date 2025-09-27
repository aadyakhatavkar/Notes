# Render the RMarkdown
rmarkdown::render("Micro1.Rmd", output_format = "html_document")

# Git automation
system("git add .")
system("git commit -m 'Updated notes'")
system("git push origin main")

# source("render_and_push.R") for commit