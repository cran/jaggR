#' Set Plotting Preferences
#'
#' @param mar plot margings
#' @param cex character expansion factor
#' @param oma outer margins
#' @param tcl tick length
#' @param mgp somethen
#' @param las text rotation on axes
#' @param cex.lab plot labels cex
#' @param font.lab font of plot labels
#' @param lwd line width
#' @param on.graph.line no idea
#' @param shading.density shading density
#' @param arrow.length arrow head length
#' @param on.graph.cex character expansion for text on graphs
#' @param margin.cex character expansion for text for margins
#' @param ... other arguments to be passed to par
#'
#' @return the previous par settings so that they can be restored
#' @export
setPlotPrefs = function(mar = c(3, 4, 1, 1),
                        cex = 1,
                        oma = c(0, 0, 0, 0),
                        tcl = -0.35,
                        mgp = c(1.5, 0.5, 0),
                        las = 1,
                        cex.lab = 1,
                        font.lab = 1,
                        lwd = 1,
                        on.graph.line = 3,
                        shading.density = 8,
                        arrow.length = 0.1,
                        on.graph.cex = 1,
                        margin.cex = 1.2,
                        ...){


  oldPar = par(mar = mar,
               cex = cex,
               oma = oma,
               tcl = tcl,
               mgp = mgp,
               las = las,
               cex.lab = 1,
               font.lab = 1,
               ...)

  invisible(list(par = oldPar,
                 on.graph.line = on.graph.line,
                 shading.density = shading.density,
                 arrow.length = arrow.length,
                 on.graph.cex = on.graph.cex,
                 margin.cex = margin.cex
                 ))
}
