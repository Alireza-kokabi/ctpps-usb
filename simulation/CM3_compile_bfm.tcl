# ===========================================================
# Created by Microsemi SmartDesign Wed Mar 02 13:05:48 2016
# 
# Warning: Do not modify this file, it may lead to unexpected 
#          simulation failures in your design.
#
# ===========================================================

if {$tcl_platform(os) == "Linux"} {
  exec "$env(ACTEL_SW_DIR)/bin/bfmtovec" -in test.bfm -out test.vec
} else {
  exec "$env(ACTEL_SW_DIR)/bin/bfmtovec.exe" -in test.bfm -out test.vec
}
