#get Hex number from grDevices Colors
GetColorHexAndDecimal <- function(color)
{
  clr <- col2rgb(color)
  sprintf("#%02X%02X%02X %3d %3d %3d", clr[1],clr[2],clr[3], clr[1], clr[2], clr[3])
}

GetColorHexAndDecimal("COLOR YOU WANT INFORMATION FOR")
