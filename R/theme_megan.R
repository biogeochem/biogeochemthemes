#' Megan's ggplot2 theme
#'
#' Megan's ggplot2 theme: black border, no ticks, subtile grid lines.
#'
#' @param base_size Base font size
#' @param base_family Base font family
#' @param ... Passed to \code{\link[ggplot2]{theme}}
#'
#' @return An object as returned by \code{\link[ggplot2]{theme}}
#'
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(y=mpg, x=disp, colour=factor(cyl))) +
#'     geom_point() + theme_megan()
#'
#' @seealso \code{\link[ggplot2]{theme}}
#'
#' @export
theme_megan <- function (base_size = 11, base_family = "", ...) {
  theme_grey(base_size = base_size, base_family = base_family) %+replace% 
    theme(axis.ticks = element_line(colour = "black", size = 1), 
          legend.key = element_rect(colour = "grey80"), 
          panel.background = element_rect(fill = "white", colour = NA), 
          panel.border = element_rect(colour = "black", fill=NA),
          axis.line = element_line(size = 1, colour = "black"),
          panel.grid.major = element_line(NA), 
          panel.grid.minor = element_line(NA), 
          axis.text  = element_text(size=rel(1), colour = "grey40"),
          #          axis.title  = element_text(size=rel(1.0)),
          axis.title.x = element_text(margin = unit(c(3, 0, 0, 0), "mm"),size=rel(1.1)),
          axis.title.y = element_text(margin = unit(c(0, 3, 0, 0), "mm"),size=rel(1.1), angle = 90),
          strip.text = element_text(size = rel(1.05), colour = "black"), #face = "normal"
          strip.background = element_blank(),
          plot.margin=unit(c(10,10,10,10),"pt"),
          ...
    )
}

#' @rdname theme_megan
#' @export
megan_theme <- theme_megan
