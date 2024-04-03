view: lxp_apis_metrics {
  sql_table_name: `aws-us-east-1-qa-01.api_usage_aws_qa.lxp_apis_metrics` ;;

  dimension: api_endpoint {
    type: string
    sql: ${TABLE}.api_endpoint ;;
  }
  dimension: api_version {
    type: string
    sql: ${TABLE}.api_version ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: client_ip_address {
    type: string
    sql: ${TABLE}.client_ip_address ;;
  }
  dimension: environment {
    type: string
    sql: ${TABLE}.environment ;;
  }
  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }
  dimension: geolocation_data {
    type: string
    sql: ${TABLE}.geolocation_data ;;
  }
  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
  }
  dimension: internal_app {
    type: string
    sql: ${TABLE}.internal_app ;;
  }
  dimension: organization_id {
    type: number
    sql: ${TABLE}.organization_id ;;
  }
  dimension: request_body {
    type: string
    sql: ${TABLE}.request_body ;;
  }
  dimension: request_headers {
    type: string
    sql: ${TABLE}.request_headers ;;
  }
  dimension: request_id {
    type: string
    sql: ${TABLE}.request_id ;;
  }
  dimension: request_method {
    type: string
    sql: ${TABLE}.request_method ;;
  }
  dimension: request_size_bytes {
    type: number
    sql: ${TABLE}.request_size_bytes ;;
  }
  dimension: request_url_parameters {
    type: string
    sql: ${TABLE}.request_url_parameters ;;
  }
  dimension: response_code {
    type: string
    sql: ${TABLE}.response_code ;;
  }
  dimension: response_headers {
    type: string
    sql: ${TABLE}.response_headers ;;
  }
  dimension: response_size_bytes {
    type: number
    sql: ${TABLE}.response_size_bytes ;;
  }
  dimension: response_time_ms {
    type: number
    sql: ${TABLE}.response_time_ms ;;
  }
  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }
  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }
  dimension: success {
    type: yesno
    sql: ${TABLE}.success ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    group_label: "Count"
    type: count
    drill_fields: [detail*]
  }
  measure: count_of_api_calls {
    group_label: "Count"
    type: number
    sql: count(${TABLE}.request_id) ;;
    drill_fields: [detail*]
  }
  measure: distinct_api_calls {
    group_label: "Count Distinct"
    type: count_distinct
    sql: ${TABLE}.request_id ;;
    drill_fields: [detail*]
  }
  measure: distinct_request {
    group_label: "Count Distinct"
    type: count_distinct
    sql: ${TABLE}.request_id ;;
    drill_fields: [host_name,category,distinct_request]
  }
  measure: total_success {
    group_label: "Other Aggregations"
    type: sum
    sql: (case when cast(${success} as string) = 'true' then 1 else 0 end) ;;
    drill_fields: [detail*]
  }
  measure: total_error {
    group_label: "Other Aggregations"
    type: sum
    sql: (case when cast(${success} as string)  = 'false' then 1 else 0 end) ;;
    drill_fields: [detail*]
  }
  measure: overall_success_error {
    group_label: "Other Aggregations"
    label: "Total Response "
    type: number
    sql: ${total_success} + ${total_error} ;;
    drill_fields: [detail*]
  }
  measure: success_rate {
    group_label: "Other Aggregations"
    type: number
    sql: sum (case when cast(${success} as string) = 'true' then 1 else 0 end) / ${overall_success_error} ;;
    value_format_name: percent_2
    drill_fields: [detail*]
  }
  measure: error_rate {
    group_label: "Other Aggregations"
    type: number
    sql: sum (case when cast(${success} as string) = 'false' then 1 else 0 end) / ${overall_success_error} ;;
    value_format_name: percent_2
    drill_fields: [detail*]
  }
    set: detail {
      fields: [
        request_id,
        api_version,
        environment,
        organization_id,
        host_name,
        category,
        api_endpoint,
        request_method,
        request_body,
        response_code,
        error_message,
        success,
        response_time_ms,
        client_ip_address,
        user_id,
        request_headers,
        response_headers,
        request_url_parameters,
        request_size_bytes,
        response_size_bytes,
        geolocation_data,
        user_agent,
        internal_app,
        timestamp_time,
        source_id,
        source_name]
  }
}
