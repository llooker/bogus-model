view: campaign {
  sql_table_name: `brazedev.CAMPAIGN`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}.archived ;;
  }

  dimension: channel_android_push {
    type: yesno
    sql: ${TABLE}.channel_android_push ;;
  }

  dimension: channel_email {
    type: yesno
    sql: ${TABLE}.channel_email ;;
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

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: draft {
    type: yesno
    sql: ${TABLE}.draft ;;
  }

  dimension: error {
    type: yesno
    sql: ${TABLE}.error ;;
  }

  dimension: first_sent {
    type: string
    sql: ${TABLE}.first_sent ;;
  }

  dimension: last_sent {
    type: string
    sql: ${TABLE}.last_sent ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: schedule_type {
    type: string
    sql: ${TABLE}.schedule_type ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      campaign_enrollment_event.count,
      email_event.count,
      push_notification_event.count,
      message_variation.count,
      campaign_conversion_behavior.count,
      in_app_message_event.count,
      campaign_tag.count,
      webhook_event.count,
      campaign_conversion_event.count,
      subscription_event.count
    ]
  }
}
