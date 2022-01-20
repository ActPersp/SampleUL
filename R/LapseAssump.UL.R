# Lapse assumption

New.LapseAssump.UL <- function() {
   Rgogo::LapseAssump(
      lapseRate = RepeatTail(c(0.15, 0.10, 0.075, 0.05, 0.025), len = 100)
   )
}
