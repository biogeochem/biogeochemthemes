#' Jason's ggplot2 theme
#'
#' Jason's ggplot2 theme: black border, no ticks, subtile grid lines.
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
#'     geom_point() + theme_jason()
#'
#' @seealso \code{\link[ggplot2]{theme}}
#'
#' @export
theme_jason <-
  function(base_size = 14, base_family = "", ...)
  {
    ggplot2::"%+replace%"(
      ggplot2::theme_bw(base_size = base_size, base_family = base_family) ,

      ggplot2::theme(axis.text = element_text(colour = "grey20"),
                     axis.ticks = element_line(colour = "grey95", size = rel(1)),
                     axis.ticks.length = grid::unit(5, "pt"),
                     axis.line = ggplot2::element_line(colour = "grey95", size = rel(1)),
                     legend.text = element_text(colour = "grey20"),
                     panel.grid.major = ggplot2::element_line(color = "grey95", size = rel(1)),
                     panel.grid.minor = ggplot2::element_line(color = "grey99"),
                     panel.background = ggplot2::element_rect(fill = "white", color = "grey50"),
                     panel.border = ggplot2::element_rect(fill = NA, color = "grey95"),
                     plot.caption = ggplot2::element_text(size = rel(0.8), hjust = 1, face = "italic"),
                     plot.title = ggplot2::element_text(size = rel(1.5), hjust = 0),
                     strip.background = ggplot2::element_rect(fill = "gray95", color = "black"),
                     ...)
    )
  }

#' @rdname theme_jason
#' @export
jason_theme <- theme_jason

