#' Get a JAGS model file
#'
#' This function provides an easy way for readers to get the JAGS model
#' files used in the book. The \code{modelID} is the 4-5 character identifier
#' used in the book. For example to get 'model-001.bugs.R', you would use
#' \code{getModel("001")}.
#'
#' @param modelID a string containing a valid model ID
#'
#' @return a string containing the model. The intention is that this
#' can be written to disk.
#'
#' @export
#'
#' @examples
#' getModel("001")
getModel = function(modelID){
  Files = list.files(system.file("models", package = "jaggR"),
                     pattern = "bug(s[.]R)?")

  if(!any(grep(modelID, Files))){
    stop("I couldn't match your model to any I have stored")
  }

  pat = glue("^model\\-{modelID}[.]")
  i = grep(pat, Files)

  if(length(i) > 1){
    stop("More than one model matches this. Try to be more specific")
  }

  f = system.file("models", Files[i], package = "jaggR")

  Lines = paste(readLines(f), collapse = "\n")
  return(Lines)
}
