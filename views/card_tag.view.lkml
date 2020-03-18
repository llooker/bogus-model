view: card_tag {
  sql_table_name: `brazedev.CARD_TAG`
    ;;

  dimension: card_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.card_id ;;
  }

  dimension: card_updated_at {
    type: string
    sql: ${TABLE}.card_updated_at ;;
  }

  dimension: tag {
    type: number
    sql: ${TABLE}.tag ;;
  }

  measure: count {
    type: count
    drill_fields: [card.name, card.id]
  }
}
