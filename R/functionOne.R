#' some title
#' @param x some data.frame without any further considerations
#' @export



functionOne <- function(x = NULL){


  if(is.null(x)){
    stop("Please provide the name of the input object!", call.=FALSE)
  }


  typ <- class(x)


  if(!('data.frame' %in% typ)){
    stop("Only objects of type 'data.frame' are allowed.", call.=FALSE)
  }


  results_1 <- dim(x)

  return(results_1)

}
