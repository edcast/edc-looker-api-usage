connection: "concord_dawn"

include: "/views/*.view.lkml"

explore: lxp_apis_metrics {
  view_label: "LXP API Metrics"
  label: "LXP API Metrics"
  persist_for: "1 hour"
}
