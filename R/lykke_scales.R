#' Fetch palette from lykke_palettes
#' @param palette Choose from 'lykke_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colors is reversed.
#'
#' @export
#' @importFrom grDevices colorRampPalette
lykke_pal <- function(palette = "sdu_colors", alpha = 1, reverse = FALSE) {
  pal <- lykke_palettes[[palette]]
  if (reverse) {
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}

#' Setup color palette for ggplot2
#'
#' @rdname scale_color_lykke
#'
#' @param palette Choose from 'lykke_palettes' list
#'
#' @param reverse logical, Reverse the order of the colors?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete color palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#'
#' @importFrom ggplot2 scale_color_manual
#'
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_lykke <- function(..., palette = "sdu_colors",
                              discrete = TRUE, alpha = 1, reverse = FALSE) {
  if (discrete) {
    discrete_scale("color", "lykke", palette = lykke_pal(palette, alpha = alpha, reverse = reverse))
  } else {
    scale_color_gradientn(colors = lykke_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
  # scale_color_manual(values=lykke_palettes[[palette]])
}


#' #' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'lykke_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams lykke_pal
#'
#' @param discrete whether to use a discrete color palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export

scale_fill_lykke <- function(..., palette = "sdu_colors",
                             discrete = TRUE, alpha = 1, reverse = TRUE) {
  if (discrete) {
    discrete_scale("fill", "lykke", palette = lykke_pal(palette, alpha = alpha, reverse = reverse))
  } else {
    scale_fill_gradientn(colors = lykke_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}
