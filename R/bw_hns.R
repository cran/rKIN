#' Normal scale bandwidth using ks::Hns function.
#'
#' A simple wrapper for the ks::Hns function.
#'
#' @param x 2d matrix of data values.
#' @return A numeric vector of estimated x and y bandwidths. Must subset your data if you wish to obtain group specific bandwidths.
#' @author Shannon E. Albeke, Wyoming Geographic Information Science Center, University of Wyoming
#' @export
#' @examples
#' data("rodents")
#' # Subset the data for a single species
#' spec1<- rodents[rodents$Species == "Species1", ]
#' # Calculate the bandwidth
#' bw_hns(as.matrix(spec1[, c("Ave_C", "Ave_N")]))


bw_hns<- function(x){
  if(!inherits(x, "matrix"))
    stop("x must be a 2-d numeric matrix")
  if(!is.numeric(x))
    stop("x must be a 2-d numeric matrix")
  if(dim(x)[2] != 2)
    stop("x must be a 2-d numeric matrix")
  return(ks::Hns(x)[c(1, 4)])
}
