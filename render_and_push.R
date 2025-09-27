# SHA256:DMkTS0WSk5jtBxATjjbLPjH1gnt9Tu5R/BO3wyYuCdQ aadya.khatavkar@gmail.com
#      +--[ED25519 256]--+
#      |    =B+=o        |
#      |   oo+*=         |
#      |  + o.*o .       |
#      | o = ..+o.E      |
#      |  * . .oS o . .  |
#      | . + o  .. . + . |
#      |  + . . +. .+ =  |
#      |   o   = .o. + . |
#      |       .+  ..    |
#      +----[SHA256]-----+
# Render the RMarkdown to HTML
          
rmarkdown::render("Micro1.Rmd", output_format = "html_document")

# Git automation
# Only add the Rmd and HTML (not every file in the folder)
system("git add Micro1.Rmd Micro1.html")

# Ask for a commit message
msg <- readline("Commit message: ")

# Commit with the custom message
system(paste("git commit -m", shQuote(msg)))

# Push to GitHub
system("git push origin main")

# Run this script in RStudio console:
# source("render_and_push.R")

