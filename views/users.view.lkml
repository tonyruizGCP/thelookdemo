view: users {
  # You can specify the table name if it's different from the view name:
  sql_table_name: looker-private-demo.thelook.users ;;

  # Define your dimensions and measures here, like this:
  dimension: id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.id ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: email {
    description: "Unique ID for each user that has ordered"
    type: string
    sql: ${TABLE}.email ;;
  }
  # Define your dimensions and measures here, like this:
  dimension: first_name {
    description: "Unique ID for each user that has ordered"
    type: string
    sql: ${TABLE}.first_name ;;
  }
  # Define your dimensions and measures here, like this:
  dimension: last_name{
    description: "Unique ID for each user that has ordered"
    type: string
    sql: ${TABLE}.last_name ;;
  }
  # Define your dimensions and measures here, like this:
  dimension: gender {
    description: "Unique ID for each user that has ordered"
    type: string
    sql: ${TABLE}.gender ;;
  }
  # Define your dimensions and measures here, like this:
  dimension: created {
    description: "Unique ID for each user that has ordered"
    type: date_time
    sql: ${TABLE}.email ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: state {
    description: "Unique ID for each user that has ordered"
    type: string
    sql: ${TABLE}.state ;;
  }  # Define your dimensions and measures here, like this:
  dimension: city {
    description: "Unique ID for each user that has ordered"
    type: string
    sql: ${TABLE}.city ;;
  }  # Define your dimensions and measures here, like this:

  dimension: zip {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.zip ;;
  }
  # Define your dimensions and measures here, like this:
  dimension: age {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.age ;;
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

# view: users {
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
