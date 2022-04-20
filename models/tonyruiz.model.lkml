connection: "looker-private-demo"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# Select the views that should be a part of this model,
# and define the joins that connect them together.

datagroup: tonyruiz_defautlt_datagroup {
  max_cache_age: "4 hours"
}

explore: order_items {

  join: orders {
    type:left_outer
    relationship: many_to_one
    sql_on: ${orders.order_id} = ${order_items.order_id} ;;

  }

  join: users {
    type:left_outer
    relationship: many_to_one
    sql_on: ${users.id} = ${orders.user_id} ;;
  }


  join: inventory_items {
    type:left_outer
    relationship: many_to_one
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
  }

  join: products {
    type:left_outer
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }
}


explore: distribution_center {

  join: inventory_items {
    type:left_outer
    relationship: many_to_one
    sql_on: ${inventory_items.production_distribution_center_id} = ${distribution_center.id} ;;
  }

}


explore: events {
  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${users.id} = ${events.user_id} ;;

  }
}
