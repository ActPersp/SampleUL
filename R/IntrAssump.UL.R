# Interest rate assumption
#
# It is also possible to set a forward rate curve in which the rates change every year.
#   In this case, you can set the argument value to a vector of length 100.

New.IntrAssump.UL <- function() {
   Rgogo::IntrAssump(
      rate = 0.04
   )
}
