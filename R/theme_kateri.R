#' Kateri's ggplot2 theme
#'
#' Kateri's ggplot2 theme: black border, no ticks, no grid lines.
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
#'     geom_point() + theme_Kateri()
#'
#' @seealso \code{\link[ggplot2]{theme}}
#'
#' @export
theme_kateri <-
  function(base_size = 16, base_family = "", ...)
  {
    ggplot2::"%+replace%"(
      ggplot2::theme_bw(base_size = base_size, base_family = base_family) ,

      ggplot2::theme(#panel.border=element_rect(color="black"),
                     panel.background = element_rect(fill = NA, colour = NA),
                     panel.grid.major=ggplot2::element_line(color=NA),
                     panel.grid.minor=ggplot2::element_line(color=NA),
                     legend.position=c(1,1),
                     legend.justification=c(1,1),
                     legend.background=ggplot2::element_rect(color="black"),
                     legend.key=ggplot2::element_rect(colour="black"),
                     ...)
    )
  }

#' @rdname theme_Kateri
#' @export
kateri_theme <- theme_kateri
