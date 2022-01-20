# Premium persistency assumption:
#   Assume premium payment decreases linearly from 100% of original amount to 50% over 11 years and remains level thereafter.

New.PremAssump.UL <- function() {
   Rgogo::PremAssump(
      premAdj = RepeatTail(seq(from = 1, to = 0.5, length.out = 11), len = 100)
   )
}