#' Theme slate
#'
#' @return dark theme
#' @export
#' @import ggplot2

theme_slate <- function(){

  theme_minimal() %+replace%

  theme(
    panel.background = element_rect(fill = "#272b30"),
    panel.border = element_rect(linetype = 1, fill = NA, color = "grey50"),
    plot.background = element_rect(
      fill = "#272b30", color = NA,
      linetype = 0
    ),
    axis.text = element_text(color = "grey80"),
    title = element_text(color = "#7a8288", face = "bold"),
    plot.title = element_text(size = 20, margin = margin(0, 0, 10, 0)),
    plot.subtitle = element_text(hjust = .5, margin = margin(0, 0, 10, 0)),
    legend.text = element_text(color = "grey60"),
    legend.key = element_rect(fill = "#272b30", linetype = 0),
    legend.background = element_rect(fill = "#272b30", linetype = 0),
    strip.background = element_rect(
      fill = "#272b30",
      color = "grey50"
    ),
    strip.text = element_text(color = "grey80"),
    text = element_text(family = "mono"),
    panel.grid.minor = element_line(color = "grey25"),
    panel.grid.major = element_line(color = "grey25"),
    legend.position = "bottom"
  )
}

