#' Title
#'
#' @param font Base text family
#' @param main.text.color Color of main text
#' @param sub.text.color Color of smaller text
#' @param base.size Base text size
#' @param plot.background.color Color of plot background, passed to `plot.background`
#' @param legend.position Position of legend
#' @param panel.border.color Color of plot panel border
#' @param panel.background Background panel color
#' @param panel.grid.color Color of the panel grid
#' @param axis.text.color Color of axis text
#' @param axis.text.size Size of axis text
#' @param subtitle.size Size of subtitle
#' @param legend.text Size of legend
#' @param legend.title Size of legend title
#' @param axis.title.size Size of axis title
#' @param title.size Size of title
#'
#' @import ggplot2
#'
#' @return
#' @export

theme_sdu <- function(font = "LL Brown Pro", # get this font working
                      main.text.color = "#FA5F70FF",
                      sub.text.color = "#FA5F70FF",
                      base.size = 15,
                      plot.background.color = "#0F0D1A",
                      legend.position = "right",
                      panel.border.color = "#494D72",
                      panel.background = "#0F0D1A",
                      panel.grid.color = "#FFB967",
                      axis.text.color = "#FA5F70FF",
                      axis.text.size = base.size * 0.6666667,
                      subtitle.size = base.size * 0.8,
                      legend.text = base.size * 0.8,
                      legend.title = base.size * 0.93,
                      axis.title.size = base.size * 0.8,
                      title.size = 15) {
  theme_minimal %+replace%
    theme(
      plot.title = element_text(
        family = font,
        size = title.size,
        face = "bold",
        color = main.text.color
      )
    )
}
