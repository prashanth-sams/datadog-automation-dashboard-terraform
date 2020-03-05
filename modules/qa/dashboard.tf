provider "datadog" {
  api_key = var.api_key
  app_key = var.app_key
}
resource "datadog_dashboard" "free_dashboard" {
  title         = "QAP Dashboard"
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
        q= var.baseline_uat_passed["us"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_failed["us"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_passed["in"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_failed["in"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_passed["af"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_failed["af"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        } 
      }
      request {
        q= var.baseline_uat_passed["eg"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_failed["eg"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_passed["au"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_failed["au"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_passed["tz"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_failed["tz"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_passed["fr"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_uat_failed["fr"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
    }
    layout = var.widget_layout_desktop
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
        q= var.baseline_prod_passed["us"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_failed["us"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_passed["in"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_failed["in"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_passed["af"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_failed["af"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_passed["eg"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_failed["eg"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_passed["au"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_failed["au"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_passed["tz"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_failed["tz"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_passed["fr"]
        display_type = "bars"
        style {
          palette = "cool"
          line_type = "solid"
          line_width = "normal"
        }
      }
      request {
        q= var.baseline_prod_failed["fr"]
        display_type = "bars"
        style {
          palette = "orange"
          line_type = "solid"
          line_width = "normal"
        }
      }
    }
    layout = var.widget_layout_mdot
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
    layout = var.widget_query_desktop
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
    layout = var.widget_query_mdot
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
    layout = var.widget_toplist_desktop
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
    layout = var.widget_toplist_mdot
  }

  template_variable {
    name   = "var"
    default = "*"
    prefix = "null"
  }
}