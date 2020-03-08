variable "api_key" {}

variable "app_key" {}

variable "title" {
  type = string
  default = "QA Dashboard"
}

variable "description" {
  type      = string
  default   = "A single Automation Dashboard for all the projects"
}

variable "baseline_uat_passed" {
  type    = map
  default = {
      us = "avg:qa.baseline.uat.passed{country:us}",
      in = "avg:qa.baseline.uat.passed{country:in}",
      af = "avg:qa.baseline.uat.passed{country:af}",
      eg = "avg:qa.baseline.uat.passed{country:eg}",
      au = "avg:qa.baseline.uat.passed{country:au}",
      tz = "avg:qa.baseline.uat.passed{country:tz}",
      fr = "avg:qa.baseline.uat.passed{country:fr}"
  }
}

variable "baseline_uat_failed" {
  type    = map
  default = {
      us = "avg:qa.baseline.uat.failed{country:us}",
      in = "avg:qa.baseline.uat.failed{country:in}",
      af = "avg:qa.baseline.uat.failed{country:af}",
      eg = "avg:qa.baseline.uat.failed{country:eg}",
      au = "avg:qa.baseline.uat.failed{country:au}",
      tz = "avg:qa.baseline.uat.failed{country:tz}",
      fr = "avg:qa.baseline.uat.failed{country:fr}"
  }
}

variable "baseline_prod_passed" {
  type    = map
  default = {
      us = "avg:qa.baseline.prod.passed{country:us}",
      in = "avg:qa.baseline.prod.passed{country:in}",
      af = "avg:qa.baseline.prod.passed{country:af}",
      eg = "avg:qa.baseline.prod.passed{country:eg}",
      au = "avg:qa.baseline.prod.passed{country:au}",
      tz = "avg:qa.baseline.prod.passed{country:tz}",
      fr = "avg:qa.baseline.prod.passed{country:fr}"
    }
}

variable "baseline_prod_failed" {
  type    = map
  default = {
      us = "avg:qa.baseline.prod.failed{country:us}",
      in = "avg:qa.baseline.prod.failed{country:in}",
      af = "avg:qa.baseline.prod.failed{country:af}",
      eg = "avg:qa.baseline.prod.failed{country:eg}",
      au = "avg:qa.baseline.prod.failed{country:au}",
      tz = "avg:qa.baseline.prod.failed{country:tz}",
      fr = "avg:qa.baseline.prod.failed{country:fr}"
  }
}

variable "widget_layout_desktop" {
  type = map
  default = {
      height = 22
      width = 60
      x = 0
      y = 0
  }
}

variable "widget_layout_mdot" {
  type = map
  default = {
      height = 22
      width = 60
      x = 61
      y = 0
  }
}

variable "widget_query_desktop" {
  type = map
  default = {
      height = 22
      width = 15
      x = 0
      y = 23
  }
}

variable "widget_query_mdot" {
  type = map
  default = {
      height = 22
      width = 15
      x = 61
      y = 23
  }
}

variable "widget_toplist_desktop" {
  type = map
  default = {
      height = 22
      width = 44
      x = 16
      y = 23
  }
}

variable "widget_toplist_mdot" {
  type = map
  default = {
      height = 22
      width = 44
      x = 77
      y = 23
  }
}

variable "widget_hostmap_zalenium" {
  type = map
  default = {
      height = 45
      width = 34
      x = 122
      y = 0
  }
}