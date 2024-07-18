---
- dashboard: api_usage_metrics
  title: API Usage Metrics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ThJiJC34K9Buqwx0dea41I
  elements:
  - title: Total Number of API Calls
    name: Total Number of API Calls
    model: api_usage
    explore: lxp_apis_metrics
    type: single_value
    fields: [lxp_apis_metrics.distinct_api_calls]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: above
    note_text: API Calls - Unique Request ID
    listen:
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Endpoint: lxp_apis_metrics.api_endpoint
      Response Code: lxp_apis_metrics.response_code
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 0
    col: 0
    width: 5
    height: 2
  - title: Success Rate
    name: Success Rate
    model: api_usage
    explore: lxp_apis_metrics
    type: single_value
    fields: [lxp_apis_metrics.success_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Endpoint: lxp_apis_metrics.api_endpoint
      Response Code: lxp_apis_metrics.response_code
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 0
    col: 13
    width: 4
    height: 2
  - title: Error Rate
    name: Error Rate
    model: api_usage
    explore: lxp_apis_metrics
    type: single_value
    fields: [lxp_apis_metrics.error_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Endpoint: lxp_apis_metrics.api_endpoint
      Response Code: lxp_apis_metrics.response_code
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 0
    col: 9
    width: 4
    height: 2
  - title: 'Error Distribution:'
    name: 'Error Distribution:'
    model: api_usage
    explore: lxp_apis_metrics
    type: looker_pie
    fields: [lxp_apis_metrics.response_code, lxp_apis_metrics.count]
    filters:
      lxp_apis_metrics.success: 'No'
    sorts: [lxp_apis_metrics.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: per
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Endpoint: lxp_apis_metrics.api_endpoint
      Response Code: lxp_apis_metrics.response_code
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 8
    col: 0
    width: 12
    height: 7
  - title: API Errors
    name: API Errors
    model: api_usage
    explore: lxp_apis_metrics
    type: looker_grid
    fields: [lxp_apis_metrics.host_name, lxp_apis_metrics.user_agent, lxp_apis_metrics.response_code,
      lxp_apis_metrics.error_message, lxp_apis_metrics.api_endpoint, lxp_apis_metrics.request_method,
      lxp_apis_metrics.timestamp_time, lxp_apis_metrics.request_body, lxp_apis_metrics.organization_id]
    filters:
      lxp_apis_metrics.success: 'No'
    sorts: [lxp_apis_metrics.timestamp_time desc]
    limit: 50
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", lxp_apis_metrics.organization_id, lxp_apis_metrics.host_name,
      lxp_apis_metrics.user_agent, lxp_apis_metrics.response_code, lxp_apis_metrics.error_message,
      lxp_apis_metrics.api_endpoint, lxp_apis_metrics.request_method, lxp_apis_metrics.request_body,
      lxp_apis_metrics.timestamp_time]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      lxp_apis_metrics.timestamp_time: Timestamp
      lxp_apis_metrics.host_name: Customer Name
      lxp_apis_metrics.response_code: Error Code
      lxp_apis_metrics.request_body: Request Payload
      lxp_apis_metrics.user_id: Customer ID
      lxp_apis_metrics.organization_id: Customer ID
    series_value_format:
      lxp_apis_metrics.organization_id:
        name: id
        format_string: '0'
        label: ID
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Endpoint: lxp_apis_metrics.api_endpoint
      Response Code: lxp_apis_metrics.response_code
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 8
    col: 12
    width: 12
    height: 7
  - title: 'List of API Calls Across All Customers '
    name: 'List of API Calls Across All Customers '
    model: api_usage
    explore: lxp_apis_metrics
    type: looker_grid
    fields: [lxp_apis_metrics.host_name, lxp_apis_metrics.api_endpoint, lxp_apis_metrics.category,
      lxp_apis_metrics.timestamp_time, lxp_apis_metrics.response_code, lxp_apis_metrics.response_time_ms,
      lxp_apis_metrics.organization_id]
    filters: {}
    sorts: [lxp_apis_metrics.timestamp_time desc]
    limit: 50
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", lxp_apis_metrics.organization_id, lxp_apis_metrics.host_name,
      lxp_apis_metrics.category, lxp_apis_metrics.api_endpoint, lxp_apis_metrics.response_code,
      lxp_apis_metrics.response_time_ms, lxp_apis_metrics.timestamp_time]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      lxp_apis_metrics.timestamp_time: Timestamp
      lxp_apis_metrics.host_name: Customer Name
      lxp_apis_metrics.response_code: Status Code
      lxp_apis_metrics.user_id: Customer ID
      lxp_apis_metrics.response_time_ms: Response Time (Mins)
      lxp_apis_metrics.organization_id: Customer ID
    series_value_format:
      lxp_apis_metrics.organization_id:
        name: id
        format_string: '0'
        label: ID
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Endpoint: lxp_apis_metrics.api_endpoint
      Response Code: lxp_apis_metrics.response_code
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 15
    col: 0
    width: 24
    height: 7
  - title: API Use by Category
    name: API Use by Category
    model: api_usage
    explore: lxp_apis_metrics
    type: looker_grid
    fields: [lxp_apis_metrics.category, lxp_apis_metrics.distinct_api_calls]
    filters: {}
    sorts: [lxp_apis_metrics.distinct_api_calls desc]
    limit: 20
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      lxp_apis_metrics.count: Usage Count
      lxp_apis_metrics.distinct_api_calls: API Call Count
    series_cell_visualizations:
      lxp_apis_metrics.count:
        is_active: true
      lxp_apis_metrics.distinct_api_calls:
        is_active: false
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Endpoint: lxp_apis_metrics.api_endpoint
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Response Code: lxp_apis_metrics.response_code
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 2
    col: 12
    width: 12
    height: 6
  - title: Top Customers and API Volume
    name: Top Customers and API Volume
    model: api_usage
    explore: lxp_apis_metrics
    type: looker_column
    fields: [lxp_apis_metrics.host_name, lxp_apis_metrics.distinct_request]
    sorts: [lxp_apis_metrics.distinct_request desc 0]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: lxp_apis_metrics.distinct_request,
            id: lxp_apis_metrics.distinct_request, name: API Call Count}], showLabels: false,
        showValues: true, valueFormat: '[>999] #.0,"K";0', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: 10px
    label_value_format: ''
    series_labels:
      lxp_apis_metrics.distinct_request: API Call Count
      lxp_apis_metrics.host_name: Top Users
    label_color: [grey]
    x_axis_label_rotation:
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      lxp_apis_metrics.distinct_api_calls:
        is_active: true
      lxp_apis_metrics.distinct_request:
        is_active: true
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Drill down shows category wise usage details
    listen:
      Response Code: lxp_apis_metrics.response_code
      Endpoint: lxp_apis_metrics.api_endpoint
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 2
    col: 0
    width: 12
    height: 6
  - title: Last used Timestamp
    name: Last used Timestamp
    model: api_usage
    explore: lxp_apis_metrics
    type: single_value
    fields: [lxp_apis_metrics.timestamp_time]
    sorts: [lxp_apis_metrics.timestamp_time desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Response Code: lxp_apis_metrics.response_code
      Endpoint: lxp_apis_metrics.api_endpoint
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      Customer Name: lxp_apis_metrics.host_name
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 0
    col: 17
    width: 7
    height: 2
  - title: Average Daily API Calls
    name: Average Daily API Calls
    model: api_usage
    explore: lxp_apis_metrics
    type: single_value
    fields: [lxp_apis_metrics.distinct_api_calls, lxp_apis_metrics.timestamp_date]
    fill_fields: [lxp_apis_metrics.timestamp_date]
    sorts: [lxp_apis_metrics.timestamp_date desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: table_calculation
      expression: count(${lxp_apis_metrics.distinct_api_calls:total})
      label: Count Rows
      value_format:
      value_format_name: Default formatting
      _kind_hint: measure
      table_calculation: count_rows
      _type_hint: number
    - category: table_calculation
      expression: "${lxp_apis_metrics.distinct_api_calls:total}/${count_rows}"
      label: Average API Calls
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: average_api_calls
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: [lxp_apis_metrics.distinct_api_calls, percent_of_lxp_api_metrics_distinct_api_calls,
      lxp_apis_metrics.timestamp_date, count_rows]
    listen:
      Customer Name: lxp_apis_metrics.host_name
      Response Code: lxp_apis_metrics.response_code
      Endpoint: lxp_apis_metrics.api_endpoint
      Category: lxp_apis_metrics.category
      Date: lxp_apis_metrics.timestamp_date
      API Version: lxp_apis_metrics.api_version
      Environment: lxp_apis_metrics.environment
    row: 0
    col: 5
    width: 4
    height: 2
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: api_usage
    explore: lxp_apis_metrics
    listens_to_filters: []
    field: lxp_apis_metrics.timestamp_date
  - name: API Version
    title: API Version
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: api_usage
    explore: lxp_apis_metrics
    listens_to_filters: []
    field: lxp_apis_metrics.api_version
  - name: Environment
    title: Environment
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: api_usage
    explore: lxp_apis_metrics
    listens_to_filters: []
    field: lxp_apis_metrics.environment
  - name: Customer Name
    title: Customer Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: api_usage
    explore: lxp_apis_metrics
    listens_to_filters: []
    field: lxp_apis_metrics.host_name
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: api_usage
    explore: lxp_apis_metrics
    listens_to_filters: []
    field: lxp_apis_metrics.category
  - name: Endpoint
    title: Endpoint
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: api_usage
    explore: lxp_apis_metrics
    listens_to_filters: []
    field: lxp_apis_metrics.api_endpoint
  - name: Response Code
    title: Response Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: api_usage
    explore: lxp_apis_metrics
    listens_to_filters: []
    field: lxp_apis_metrics.response_code
