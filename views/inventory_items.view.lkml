view: inventory_items {
  # You can specify the table name if it's different from the view name:
  sql_table_name:  looker-private-demo.thelook.inventory_items ;;

  # Define your dimensions and measures here, like this:
  dimension: id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: product_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: created_at{
    description: "Unique ID for each user that has ordered"
    type: date_time
    sql: ${TABLE}.created_at ;;
  }


  dimension: sold_at {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.sold_at ;;
  }

  dimension: cost {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: production_distribution_center_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.production_distribution_center_id ;;
  }
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: inventory_items {
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
