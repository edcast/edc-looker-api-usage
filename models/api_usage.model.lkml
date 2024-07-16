connection: "concord_dawn"

include: "/views/*.view.lkml"
include: "/dashboard/api_usage.dashboard.lookml"

explore: lxp_apis_metrics {
  view_label: "LXP API Metrics"
  label: "LXP API Metrics"
  persist_for: "1 hour"
}
