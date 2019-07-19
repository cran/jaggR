#' Tidy BUGS files
#'
#' This function cleans up the formatting
#'
#' @param path location of file(s)
#' @param arrow use the \code{<-} operator if TRUE, \code{=} otherwise.
#' @param brace.newline move braces to a new line if TRUE
#' @param indent number of spaces to indent code blocks
#'
#' @importFrom glue glue
#' @importFrom formatR tidy_source
tidy_bugs = function(path = ".",
                     arrow = TRUE,
                     brace.newline = FALSE,
                     indent = 2){

  Files = list.files(path, pattern = "[.]bug(s[.]R)?$", full.names = TRUE)

  for(f in Files){
    Lines = readLines(f)

    bData = any(grepl("^data(|[ {]*(.*[}])?)$", Lines))
    bModel = any(grepl("^model[ {]*$", Lines))

    dataLine = if(bData){grep("^data(|[ {]*(.*[}])?)$", Lines)}else{NA}
    modelLine = if(bModel){grep("^model[ {]*$", Lines)}else{NA}

    print(glue("File: {f} model: {modelLine} data: {dataLine}"))

    if(bData){
      Lines[dataLine] = sub("data", "", Lines[dataLine])
    }

    if(bModel){
      Lines[modelLine] = sub("model", "", Lines[modelLine])
    }

    tempInPath = file.path(tempdir(), "temp_in.R")
    tempOutPath = file.path(tempdir(), "temp_out.R")

    writeLines(Lines, tempInPath)
    tidy_source(source = tempInPath, file = tempOutPath,
                arrow = arrow, brace.newline = brace.newline,
                indent = indent)

    Lines = readLines(tempOutPath)
    blocks = grep("^[{]$", Lines)
    numBlocks = length(blocks)

    if(bData && bModel){
      if(numBlocks == 2){
        Lines[blocks[1]] = "data{"
        Lines[blocks[2]] = "model{"
        writeLines(Lines, f)
      }else{
        stop(glue("I couldn't handle {f}"))
      }
    }else if(!bData && bModel){
      if(numBlocks == 1){
        Lines[blocks] = "model{"
        writeLines(Lines, f)
      }else{
        stop(glue("I couldn't handle {f}"))
      }
    }else{
      stop(glue("The file {f} doesn't contain a model block"))
    }

    if(file.exists(tempInPath)){
      file.remove(tempInPath)
    }

    if(file.exists(tempOutPath)){
      file.remove(tempOutPath)
    }

  }
}
