view: order_items {
  # You can specify the table name if it's different from the view name:
  sql_table_name: looker-private-demo.thelook.order_items ;;
  view_label: "Order Items"

  # Define your dimensions and measures here, like this:
  dimension: order_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.order_id ;;
  }
  # Define your dimensions and measures here, like this:
  dimension: inventory_item_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.inventory_id ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: sales_price {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.sales_price ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: returned_at {
    description: "Unique ID for each user that has ordered"
    type: date_time
    sql: ${TABLE}.returned_at ;;
  }
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }

  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }

  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: order_items {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
