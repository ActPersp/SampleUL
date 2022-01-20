# Mortality assumption is set at 90% of Canadian Institute of Actuaries 1997-2004 mortality tables.
# The mortality tables are gender and smoking status distinct.
#
# If you want to set assumption based on your own mortality tables, you have to import the tables
#    and create table objects.  See https://rmodel.io/projects/table-overview/ for how-to details.

New.MortAssump.UL <- function() {
   Rgogo::MortAssump(
      mortTable = c(
         MN = "CIA9704L.MN",     # male nonsmoker
         MS = "CIA9704L.MS",     # male smoker
         FN = "CIA9704L.FN",     # female nonsmoker
         FS = "CIA9704L.FS"      # female smoker
      ),
      mortTableMult = 0.9
   )
}
