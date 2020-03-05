provider "datadog" {
  api_key = var.api_key
  app_key = var.app_key
}
resource "datadog_dashboard" "free_dashboard" {
  title         = "QA Dashboard"
  description   = "Live automation dashboard"
  layout_type   = "free"
  is_read_only  = false

  widget {
    timeseries_definition {
      title = "UAT BASELINE"
      title_size = 16
      title_align = "center"
      show_legend = false
      time = {
        live_span = "1h"
      }
      request {
        q= "avg:qa.baseline.uat.passed{country:us}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.failed{country:us}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.passed{country:in}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.failed{country:in}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.passed{country:af}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.failed{country:af}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        } 
      }
      request {
        q= "avg:qa.baseline.uat.passed{country:eg}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.failed{country:eg}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.passed{country:au}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.failed{country:au}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.passed{country:tz}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.failed{country:tz}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.passed{country:fr}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.uat.failed{country:fr}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
    }
    layout = {
      height = 22
      width = 60
      x = 0
      y = 0
    }
  }

  widget {
    timeseries_definition {
      title = "PROD BASELINE"
      title_size = 16
      title_align = "center"
      show_legend = false
      time = {
        live_span = "1h"
      }
      request {
        q= "avg:qa.baseline.prod.passed{country:us}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.failed{country:us}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.passed{country:in}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.failed{country:in}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.passed{country:af}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.failed{country:af}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.passed{country:eg}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.failed{country:eg}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.passed{country:au}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.failed{country:au}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.passed{country:tz}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.failed{country:tz}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.passed{country:fr}"
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= "avg:qa.baseline.prod.failed{country:fr}"
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
    }
    layout = {
      height = 22
      width = 60
      x = 61
      y = 0
    }
  }

  widget {
    query_value_definition {
      request {
        q = "avg:qa.baseline.uat.failed{*}"
        aggregator = "sum"
        conditional_formats {
          comparator = ">"
          value = "0"
          palette = "white_on_red"
        }
        conditional_formats {
          comparator = "<"
          value = "1"
          palette = "white_on_green"
        }
      }
      autoscale = false
      precision = "0"
      text_align = "center"
      title = "UAT"
      title_align = "center"
      title_size = 16
      time = {
        live_span = "1h"
      }
    }
    layout = {
      height = 22
      width = 15
      x = 0
      y = 23
    }
  }

  widget {
    query_value_definition {
      request {
        q = "avg:qa.baseline.prod.failed{*}"
        aggregator = "sum"
        conditional_formats {
          comparator = ">"
          value = "0"
          palette = "white_on_red"
        }
        conditional_formats {
          comparator = "<"
          value = "1"
          palette = "white_on_green"
        }
      }
      autoscale = false
      precision = "0"
      text_align = "center"
      title = "PROD"
      title_align = "center"
      title_size = 16
      time = {
        live_span = "1h"
      }
    }
    layout = {
      height = 22
      width = 15
      x = 61
      y = 23
    }
  }

  widget {
    toplist_definition {
      request {
        q= "max:qa.baseline.uat.total{*} by {country}"
      }
      title = "UAT Test Counts"
      title_size = 16
      title_align = "center"
      time = {
        live_span = "1d"
      }
    }
    layout = {
      height = 22
      width = 44
      x = 16
      y = 23
    }
  }

  widget {
    toplist_definition {
      request {
        q= "max:qa.baseline.prod.total{*} by {country}"
      }
      title = "PROD Test Counts"
      title_size = 16
      title_align = "center"
      time = {
        live_span = "1d"
      }
    }
    layout = {
      height = 22
      width = 44
      x = 77
      y = 23
    }
  }

  template_variable {
    name   = "var"
    default = "*"
    prefix = "null"
  }
}