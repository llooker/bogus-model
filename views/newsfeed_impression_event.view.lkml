view: newsfeed_impression_event {
  sql_table_name: `brazedev.NEWSFEED_IMPRESSION_EVENT`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }

  dimension: device_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.device_id ;;
  }

  dimension: external_user_id {
    type: number
    sql: ${TABLE}.external_user_id ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, device.id]
  }
}
