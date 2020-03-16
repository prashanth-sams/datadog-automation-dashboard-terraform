provider "datadog" {
  api_key = var.api_key
  app_key = var.app_key
}

resource "datadog_screenboard" "qa_dashboard" {
  title     = var.title
  read_only = false

  dynamic "widget" {
    for_each = var.layout_timeseries
    content {
      x     = widget.value["x"]
      y     = widget.value["y"]
      type  = widget.value["type"]
      title = widget.value["title"]

      tile_def {
        viz = widget.value.type
        dynamic "request" {
          for_each = widget.value["test_type"] == "query_uat_timeseries" ? var.query_uat_timeseries : var.query_prod_timeseries
          content {
            q    = request.value.q
            type = "bars"
          }
        }
      }
    }
  }

  dynamic "widget" {
    for_each = var.layout_query_value
    content {
      type      = widget.value["type"]
      x         = widget.value["x"]
      y         = widget.value["y"]
      title     = widget.value["title"]
      precision = widget.value["precision"]

      tile_def {
        viz = widget.value.type
        dynamic "request" {
          for_each = widget.value["test_type"] == "query_uat_queryvalue" ? var.query_uat_queryvalue : var.query_prod_queryvalue
          content {
            q          = request.value.q
            aggregator = "sum"

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
    }
  }

  dynamic "widget" {
    for_each = var.layout_toplist
    content {
      type  = widget.value["type"]
      x     = widget.value["x"]
      y     = widget.value["y"]
      title = widget.value["title"]

      tile_def {
        viz = widget.value.type
        dynamic "request" {
          for_each = widget.value["test_type"] == "query_uat_toplist" ? var.query_uat_toplist : var.query_prod_toplist
          content {
            q = request.value.q
          }
        }
      }
    }
  }

  dynamic "widget" {
    for_each = var.layout_hostmap
    content {
      type  = widget.value["type"]
      x     = widget.value["x"]
      y     = widget.value["y"]
      title = widget.value["title"]

      tile_def {
        viz = widget.value.type

        node_type       = "container"
        scope           = ["app:zalenium"]
        group           = []
        no_group_hosts  = true
        no_metric_hosts = true

        request {
          q    = var.query_hostmap
          type = "fill"
        }

        style = {
          palette      = "green_to_orange"
          palette_flip = true
        }
      }
    }
  }

  template_variable {
    name    = "var"
    default = "*"
    prefix  = "null"
  }
}