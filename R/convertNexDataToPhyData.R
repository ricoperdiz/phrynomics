#' Convert Nexus Data To Phylip Data
#' 
#' This function will convert data from nexus formatting into phylip. Used internally in the \code{ReadSNP} function. 

#' @param nexData Nexus formatted dataset
#' @export
#' @return Returns a phylip formated matrix
#' @seealso \link{ReadSNP} 

ConvertNexDataToPhyData <- function(nexData) {
  phyData <- data.frame(matrix(lapply(lapply(nexData, toupper), paste, collapse="")))
  rownames(phyData) <- names(nexData)
  return(phyData)
}

