variable "title" {}

variable "api_key" {}

variable "app_key" {}

variable "query_uat_timeseries" {
  type = list
  default = [
    { q = "avg:qa.baseline.uat.passed{country:us}" },
    { q = "avg:qa.baseline.uat.failed{country:us}" },
    { q = "avg:qa.baseline.uat.passed{country:in}" },
    { q = "avg:qa.baseline.uat.failed{country:in}" },
    { q = "avg:qa.baseline.uat.passed{country:af}" },
    { q = "avg:qa.baseline.uat.failed{country:af}" },
    { q = "avg:qa.baseline.uat.passed{country:eg}" },
    { q = "avg:qa.baseline.uat.failed{country:eg}" },
    { q = "avg:qa.baseline.uat.passed{country:au}" },
    { q = "avg:qa.baseline.uat.failed{country:au}" },
    { q = "avg:qa.baseline.uat.passed{country:tz}" },
    { q = "avg:qa.baseline.uat.failed{country:tz}" },
    { q = "avg:qa.baseline.uat.passed{country:fr}" },
    { q = "avg:qa.baseline.uat.failed{country:fr}" }
  ]
}

variable "query_prod_timeseries" {
  type = list
  default = [
    { q = "avg:qa.baseline.prod.passed{country:us}" },
    { q = "avg:qa.baseline.prod.failed{country:us}" },
    { q = "avg:qa.baseline.prod.passed{country:in}" },
    { q = "avg:qa.baseline.prod.failed{country:in}" },
    { q = "avg:qa.baseline.prod.passed{country:af}" },
    { q = "avg:qa.baseline.prod.failed{country:af}" },
    { q = "avg:qa.baseline.prod.passed{country:eg}" },
    { q = "avg:qa.baseline.prod.failed{country:eg}" },
    { q = "avg:qa.baseline.prod.passed{country:au}" },
    { q = "avg:qa.baseline.prod.failed{country:au}" },
    { q = "avg:qa.baseline.prod.passed{country:tz}" },
    { q = "avg:qa.baseline.prod.failed{country:tz}" },
    { q = "avg:qa.baseline.prod.passed{country:fr}" },
    { q = "avg:qa.baseline.prod.failed{country:fr}" }
  ]
}

variable "query_uat_queryvalue" {
  type    = list
  default = [{ q = "avg:qa.baseline.uat.failed{*}" }]
}

variable "query_prod_queryvalue" {
  type    = list
  default = [{ q = "avg:qa.baseline.prod.failed{*}" }]
}

variable "query_uat_toplist" {
  type    = list
  default = [{ q = "max:qa.baseline.uat.total{*} by {country}" }]
}

variable "query_prod_toplist" {
  type    = list
  default = [{ q = "max:qa.baseline.prod.total{*} by {country}" }]
}

variable "query_hostmap" {
  type    = string
  default = "avg:process.stat.container.io.wbps{app:zalenium} by {host}"
}

variable "layout_timeseries" {
  type = list
  default = [
    {
      type      = "timeseries"
      x         = 0
      y         = 0
      title     = "UAT BASELINE"
      test_type = "query_uat_timeseries"
    },
    {
      type      = "timeseries"
      x         = 61
      y         = 0
      title     = "PROD BASELINE"
      test_type = "query_prod_timeseries"
    }
  ]
}

variable "layout_query_value" {
  type = list
  default = [
    {
      type      = "query_value"
      x         = 0
      y         = 23
      title     = "UAT"
      precision = "0"
      test_type = "query_uat_queryvalue"
    },
    {
      type      = "query_value"
      x         = 61
      y         = 23
      title     = "PROD"
      precision = "0"
      test_type = "query_prod_queryvalue"
    }
  ]
}

variable "layout_toplist" {
  type = list
  default = [
    {
      type      = "toplist"
      x         = 16
      y         = 23
      title     = "UAT Test Counts"
      test_type = "query_uat_toplist"
    },
    {
      type      = "toplist"
      x         = 77
      y         = 23
      title     = "PROD Test Counts"
      test_type = "query_prod_toplist"
    }
  ]
}

variable "layout_hostmap" {
  type = list
  default = [
    {
      type  = "hostmap"
      x     = 122
      y     = 0
      title = "ZALENIUM PODS"
    }
  ]
}