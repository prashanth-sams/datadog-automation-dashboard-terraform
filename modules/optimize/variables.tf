variable "api_key" {}

variable "app_key" {}

variable "title" {}

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

variable "cool_style" {
  type = map
  default = {
    palette = "cool"
    type    = "solid"
    width   = "normal"
  }
}

variable "orange_style" {
  type = map
  default = {
    palette = "orange"
    type    = "solid"
    width   = "normal"
  }
}