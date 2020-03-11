provider "datadog" {
  api_key = var.api_key
  app_key = var.app_key
}
resource "datadog_screenboard" "acceptance_test" {
  title       = var.title
  read_only   = false

  widget {
    type        = "timeseries"
    x           = 0
    y           = 0
    height      = 22
    width       = 60
    title       = "UAT BASELINE"
    title_size  = 16
    title_align = "center"
    legend      = true
    legend_size = 16

    time = {
      live_span = "1h"
    }

    tile_def {
      viz = "timeseries"

      request {
        q    = var.baseline_uat_passed["us"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q    = var.baseline_uat_failed["us"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_uat_passed["in"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_uat_failed["in"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_uat_passed["af"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_uat_failed["af"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_uat_passed["eg"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_uat_failed["eg"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_uat_passed["au"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_uat_failed["au"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_uat_passed["tz"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_uat_failed["tz"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_uat_passed["fr"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_uat_failed["fr"]
        type = "bars"
        style = var.orange_style
      }
      
    }
  }

  widget {
    type        = "timeseries"
    x           = 61
    y           = 0
    height      = 22
    width       = 60
    title       = "PROD BASELINE"
    title_size  = 16
    title_align = "center"
    legend      = false

    time = {
      live_span = "1h"
    }

    tile_def {
      viz = "timeseries"

      request {
        q    = var.baseline_prod_passed["us"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q    = var.baseline_prod_failed["us"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_prod_passed["in"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_prod_failed["in"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_prod_passed["af"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_prod_failed["af"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_prod_passed["eg"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_prod_failed["eg"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_prod_passed["au"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_prod_failed["au"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_prod_passed["tz"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_prod_failed["tz"]
        type = "bars"
        style = var.orange_style
      }
      request {
        q= var.baseline_prod_passed["fr"]
        type = "bars"
        style = var.cool_style
      }
      request {
        q= var.baseline_prod_failed["fr"]
        type = "bars"
        style = var.orange_style
      }
    }

  }

  widget {
    type        = "query_value"
    x           = 0
    y           = 23
    height      = 22
    width       = 15
    title       = "UAT"
    title_size  = 16
    title_align = "center"
    legend      = true
    legend_size = 16
    precision = "0"
    text_align = "center"

    time = {
      live_span = "1h"
    }

    tile_def {
      viz = "query_value"

      request {
        q           = "avg:qa.baseline.uat.failed{*}"
        aggregator  = "sum"

        conditional_format {
          comparator = ">"
          value      = "0"
          palette    = "white_on_red"
        }
        conditional_format {
          comparator = "<"
          value      = "1"
          palette    = "white_on_green"
        }
      }
    }
  }

  widget {
    type        = "query_value"
    x           = 61
    y           = 23
    height      = 22
    width       = 15
    title       = "PROD"
    title_size  = 16
    title_align = "center"
    legend      = false
    precision = "0"
    text_align = "center"

    time = {
      live_span = "1h"
    }

    tile_def {
      viz = "query_value"

      request {
        q           = "avg:qa.baseline.prod.failed{*}"
        aggregator  = "sum"

        conditional_format {
          comparator = ">"
          value      = "0"
          palette    = "white_on_red"
        }
        conditional_format {
          comparator = "<"
          value      = "1"
          palette    = "white_on_green"
        }
      }
    }
  }

  widget {
    type     = "toplist"
    x        = 16
    y        = 23
    height   = 22
    width    = 44
    title    = "UAT Test Counts"
    title_align = "center"
    title_size = 16
    time = {
      live_span = "1d"
    }
    tile_def {
      viz = "toplist"
      request {
        q= "max:qa.baseline.uat.total{*} by {country}"
      }
    }
  }

  widget {
    type     = "toplist"
    x        = 77
    y        = 23
    height   = 22
    width    = 44
    title    = "PROD Test Counts"
    title_align = "center"
    title_size = 16
    time = {
      live_span = "1d"
    }
    tile_def {
      viz = "toplist"
      request {
        q= "max:qa.baseline.prod.total{*} by {country}"
      }
    }
  }

  widget {
    type     = "hostmap"
    x        = 122
    y        = 0
    height   = 45
    width    = 34
    title = "ZALENIUM PODS"
    title_size = 16
    title_align = "center"

    tile_def {
      viz             = "hostmap"
      node_type       = "container"
      scope           = ["app:zalenium"]
      group           = []
      no_group_hosts  = true
      no_metric_hosts = true

      request {
        q    = "avg:process.stat.container.io.wbps{app:zalenium} by {host}"
        type = "fill"
      }

      style = {
        palette      = "green_to_orange"
        palette_flip = true
      }
    }
  }

  template_variable {
    name   = "var"
    default = "*"
    prefix = "null"
  }
}
