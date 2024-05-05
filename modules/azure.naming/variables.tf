
variable "azure_regions" {
  # Good reference here:
  # https://github.com/claranet/terraform-azurerm-regions/blob/master/REGIONS.md
  type = map(string)
  default = {
    "East US"                = "eus"
    "East US 2"              = "eus2"
    "West US"                = "wus"
    "West US 2"              = "wus2"
    "Central US"             = "cus"
    "South Central US"       = "scus"
    "North Central US"       = "ncus"
    "West Central US"        = "wcus"
    "East Asia"              = "eas"
    "Southeast Asia"         = "seas"
    "Japan East"             = "jpe"
    "Japan West"             = "jpw"
    "Australia East"         = "aue"
    "Australia Southeast"    = "ause"
    "Central India"          = "cind"
    "South India"            = "sind"
    "West India"             = "wind"
    "Canada Central"         = "ccan"
    "Canada East"            = "ecan"
    "UK South"               = "uks"
    "UK West"                = "ukw"
    "West Europe"            = "weu"
    "North Europe"           = "neu"
    "France Central"         = "frac"
    "France South"           = "fras"
    "Germany North"          = "den"
    "Germany West Central"   = "dewc"
    "Norway East"            = "noe"
    "Norway West"            = "now"
    "Switzerland North"      = "chn"
    "Switzerland West"       = "chw"
    "Brazil South"           = "brs"
    "US DoD Central"         = "dodc"
    "US DoD East"            = "dode"
    "US Gov Arizona"         = "usga"
    "US Gov Iowa"            = "usgi"
    "US Gov Texas"           = "usgt"
    "US Gov Virginia"        = "usgv"
    "US Sec East"            = "usse"
    "US Sec West"            = "ussw"
    "US East"                = "use"
    "US East 2"              = "use2"
    "US North Central"       = "usnc"
    "US South Central"       = "ussc"
    "US West"                = "usw"
    "US West 2"              = "usw2"
    # Add more regions and their abbreviations as needed
  }
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "dev"
}

variable "location" {
  type        = string
  description = "Azure location name"

  validation {
    condition = can(find_azure_location(var.location))
    error_message = "The specified location '${var.location}' is not a valid Azure location."
  }
}
