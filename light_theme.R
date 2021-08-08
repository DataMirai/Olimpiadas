library(shiny)
library(shinydashboard)
library(dashboardthemes)
library(shinyWidgets)

theme_south <- shinyDashboardThemeDIY(
  
  ### general
  appFontFamily = "Arial"
  ,appFontColor = "#293033"
  ,primaryFontColor = "#434C5E"
  ,infoFontColor = "#434C5E"
  ,successFontColor = "#434C5E"
  ,warningFontColor = "#434C5E"
  ,dangerFontColor = "#434C5E"
  ,bodyBackColor = "#ECF0F5"
  
  ### header
  ,logoBackColor = "#3B4252"
  
  ,headerButtonBackColor = "#3B4252"
  ,headerButtonIconColor = "#4C566A"
  ,headerButtonBackColorHover = "#3B4252"
  ,headerButtonIconColorHover = "#81A1C1"
  
  ,headerBackColor = "#3B4252"
  ,headerBoxShadowColor = ""
  ,headerBoxShadowSize = "0px 0px 0px"
  
  ### sidebar
  ,sidebarBackColor = "#434C5E"
  ,sidebarPadding = 0
  
  ,sidebarMenuBackColor = "transparent"
  ,sidebarMenuPadding = 0
  ,sidebarMenuBorderRadius = 0
  
  ,sidebarShadowRadius = ""
  ,sidebarShadowColor = "0px 0px 0px"
  
  ,sidebarUserTextColor = "#D8DEE9"
  
  ,sidebarSearchBackColor = "#4C566A"
  ,sidebarSearchIconColor = "#E5E9F0"
  ,sidebarSearchBorderColor = "#4C566A"
  
  ,sidebarTabTextColor = "#ECEFF4"
  ,sidebarTabTextSize = 14
  ,sidebarTabBorderStyle = "none"
  ,sidebarTabBorderColor = "none"
  ,sidebarTabBorderWidth = 0
  
  ,sidebarTabBackColorSelected = "#3B4252"
  ,sidebarTabTextColorSelected = "#ECEFF4"
  ,sidebarTabRadiusSelected = "5px"
  
  ,sidebarTabBackColorHover = "#3B4252"
  ,sidebarTabTextColorHover = "#81A1C1"
  ,sidebarTabBorderStyleHover = "none"
  ,sidebarTabBorderColorHover = "none"
  ,sidebarTabBorderWidthHover = 0
  ,sidebarTabRadiusHover = "5px"
  
  ### boxes
  ,boxBackColor = "#ffffff"
  ,boxBorderRadius = 0
  ,boxShadowSize = "0px 0px 0px"
  ,boxShadowColor = ""
  ,boxTitleSize = 16
  ,boxDefaultColor = "#ffffff"
  ,boxPrimaryColor = "#88C0D0"
  ,boxInfoColor = "#8FBCBB"
  ,boxSuccessColor = "#A3BE8C"
  ,boxWarningColor = "#EBCB8B"
  ,boxDangerColor = "#BF616A"
  
  ,tabBoxTabColor = "#ffffff"
  ,tabBoxTabTextSize = 16
  ,tabBoxTabTextColor = "#293033"
  ,tabBoxTabTextColorSelected = "#293033"
  ,tabBoxBackColor = "#e6ecf5"
  ,tabBoxHighlightColor = "#4C566A"
  ,tabBoxBorderRadius = 0 
  
  ### inputs
  ,buttonBackColor = "#ffffff"
  ,buttonTextColor = "#293033"
  ,buttonBorderColor = "#2E3440"
  ,buttonBorderRadius = 5
  
  ,buttonBackColorHover = "#ffffff"
  ,buttonTextColorHover = "#3B4252"
  ,buttonBorderColorHover = "#2E3440"
  
  ,textboxBackColor = "#ffffff"
  ,textboxBorderColor = "#2E3440"
  ,textboxBorderRadius = 5
  ,textboxBackColorSelect = "#ffffff"
  ,textboxBorderColorSelect = "#2E3440"
  
  ### tables
  ,tableBackColor = "#ffffff"
  ,tableBorderColor = "#fcfcfc"
  ,tableBorderTopSize = 0
  ,tableBorderRowSize = 0
  
)
