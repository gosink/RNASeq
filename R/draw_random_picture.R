#' Draw a Random Picture
#'
#' This function uses ggplot to draw a random picture.
#'
#' @author John J. Gosink
#' @param N  Number of points to draw.
#' @return  Nothing created.  This function is called for it's side effects.
#' @examples
#' draw_random_picture(N=17)
#' @import ggplot2, dplyr
#' @export
#'
#'


draw_random_picture <- function(N=15) {

  dat <- tibble(x=rnorm(N), y=rnorm(N))
  p <- ggplot(dat, aes(x=x, y=y)) +
    geom_point() +
    labs(title  = paste0('Plot of ', N, ' random numbers'))

  p
}



#draw_random_picture(N=12)




