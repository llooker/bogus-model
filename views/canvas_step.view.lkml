view: canvas_step {
  sql_table_name: `brazedev.CANVAS_STEP`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: canvas_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.canvas_id ;;
  }

  dimension: canvas_step_name {
    type: string
    sql: ${TABLE}.canvas_step_name ;;
  }

  dimension: canvas_updated_at {
    type: string
    sql: ${TABLE}.canvas_updated_at ;;
  }

  dimension: channel_android_push {
    type: yesno
    sql: ${TABLE}.channel_android_push ;;
  }

  dimension: channel_ios_push {
    type: yesno
    sql: ${TABLE}.channel_ios_push ;;
  }

  dimension: channel_web_push {
    type: yesno
    sql: ${TABLE}.channel_web_push ;;
  }

  dimension: channel_webhook {
    type: yesno
    sql: ${TABLE}.channel_webhook ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      canvas_step_name,
      canvas.name,
      canvas.id,
      email_event.count,
      canvas_entry_event.count,
      push_notification_event.count,
      message_variation.count,
      in_app_message_event.count,
      webhook_event.count,
      canvas_conversion_event.count,
      subscription_event.count
    ]
  }
}
