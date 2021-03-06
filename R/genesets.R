#' demonstration of gene set construction for ivyGlimpse app
#' @note Should be replaced by selections from a general catalog.
#' @return list of gene sets with attributes facilitating
#' dropdown construction -- attr(,"fullTitle") is a list of strings
#' associated with gene set elements (named list with vectors 
#' of gene symbols constituting sets of interest) \cr
#' List of 4 \cr
#'  $ General: Ras-Raf-MEK-Erk/JNK signaling (26 genes) \cr                                      : chr [1:26] "KRAS" "HRAS" "BRAF" "RAF1" ... \cr
#'  $ Glioblastoma: RTK/Ras/PI3K/AKT Signaling (17 genes) \cr                                    : chr [1:17] "EGFR" "ERBB2" "PDGFRA" "MET" ... \cr
#'  $ General: PI3K-AKT-mTOR signaling (17 genes)            \cr                                : chr [1:17] "PIK3CA" "PIK3R1" "PIK3R2" "PTEN" ... \cr
#'  $ Ovarian Cancer: Putative tumor-suppressor genes in epithelial ovarian cancer (16 genes) \cr : chr [1:16] "DIRAS3" "RASSF1" "DLEC1" "SPARC" ... \cr
#'  - attr(*, "fullTitle")=List of 4 \cr
#'   ..$ glioRTK  : chr "Glioblastoma: RTK/Ras/PI3K/AKT Signaling (17 genes)" \cr
#'   ..$ pi3k     : chr "General: PI3K-AKT-mTOR signaling (17 genes)" \cr
#'   ..$ ovtumsupp: chr "Ovarian Cancer: Putative tumor-suppressor genes in epithelial ovarian cancer (16 genes)" \cr
#'   ..$ rasraf   : chr "General: Ras-Raf-MEK-Erk/JNK signaling (26 genes)" \cr
#' @examples
#' str(makeGeneSets())
#' @export
makeGeneSets = function() {
   glioRTK = c(
   "EGFR","ERBB2","PDGFRA","MET","KRAS","NRAS","HRAS","NF1","SPRY2","FOXO1","FOXO3","AKT1","AKT2","AKT3","PIK3R1","PIK3CA","PTEN"
   )
   
   pi3k = c(
   "PIK3CA","PIK3R1","PIK3R2","PTEN","PDPK1","AKT1","AKT2","FOXO1","FOXO3","MTOR","RICTOR","TSC1","TSC2","RHEB","AKT1S1","RPTOR","MLST8"
   )
   
   ovtumsupp=c("DIRAS3","RASSF1","DLEC1","SPARC","DAB2","PLAGL1","RPS6KA2","PTEN","OPCML","BRCA2","ARL11","WWOX","TP53","DPH1","BRCA1","PEG3")
   
   rasraf = c("KRAS","HRAS","BRAF","RAF1","MAP3K1","MAP3K2","MAP3K3","MAP3K4","MAP3K5","MAP2K1","MAP2K2","MAP2K3","MAP2K4","MAP2K5",
     "MAPK1","MAPK3","MAPK4","MAPK6","MAPK7","MAPK8","MAPK9","MAPK12","MAPK14","DAB2","RASSF1","RAB25")
   
   someSets = list(rasraf=rasraf, glioRTK=glioRTK,
      pi3k=pi3k,
      ovtumsupp = ovtumsupp)
   
   attr(someSets, "fullTitle") = list(
      glioRTK="Glioblastoma: RTK/Ras/PI3K/AKT Signaling (17 genes)",
      pi3k="General: PI3K-AKT-mTOR signaling (17 genes)",
      ovtumsupp = "Ovarian Cancer: Putative tumor-suppressor genes in epithelial ovarian cancer (16 genes)",
      rasraf = "General: Ras-Raf-MEK-Erk/JNK signaling (26 genes)")
   
   names(someSets) = unlist(attr(someSets, "fullTitle")[names(someSets)])
   
   someSets
}
