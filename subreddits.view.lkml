view: subreddits {
  sql_table_name: Reddit_thesis_subreddits.subreddits ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: banner_img {
    type: string
    sql: ${TABLE}.banner_img ;;
    hidden: yes
  }

  dimension: collapse_deleted_comments {
    type: yesno
    sql: ${TABLE}.collapse_deleted_comments ;;
    label: "may be useful in comparing quarantined vs unquarantined subs"
  }

  dimension: comment_score_hide_mins {
    type: number
    sql: ${TABLE}.comment_score_hide_mins ;;
    hidden: yes
  }

  dimension: created {
    type: number
    sql: ${TABLE}.created ;;
  }

  dimension: created_utc {
    type: number
    sql: ${TABLE}.created_utc ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
    label: "won't be interesting at scale"
  }

  dimension: description_html {
    type: string
    sql: ${TABLE}.description_html ;;
    hidden: yes
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: header_img {
    type: string
    sql: ${TABLE}.header_img ;;
    hidden: yes
  }

  dimension: header_title {
    type: string
    sql: ${TABLE}.header_title ;;
    label: "what is this"
  }

  dimension: hide_ads {
    type: yesno
    sql: ${TABLE}.hide_ads ;;
    label: "what is this"
  }

  dimension: icon_img {
    type: string
    sql: ${TABLE}.icon_img ;;
    hidden: yes
  }

  dimension: lang {
    type: string
    sql: ${TABLE}.lang ;;
    label: "what is this"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    label: "interesting for output"
  }

  dimension: over18 {
    type: yesno
    sql: ${TABLE}.over18 ;;
    label: "interesting for analysis"
  }

  dimension: public_description {
    type: string
    sql: ${TABLE}.public_description ;;
    label: "bad at scale"
  }

  dimension: public_description_html {
    type: string
    sql: ${TABLE}.public_description_html ;;
    hidden: yes
  }

  dimension: public_traffic {
    type: yesno
    sql: ${TABLE}.public_traffic ;;
    label: "is this what I think it is"
  }

  dimension: quarantine {
    type: yesno
    sql: ${TABLE}.quarantine ;;
    label: "key variable"
  }

  dimension: submission_type {
    type: string
    sql: ${TABLE}.submission_type ;;
    label: "could be interesting for analysis"
  }

  dimension: submit_link_label {
    type: string
    sql: ${TABLE}.submit_link_label ;;
    hidden: yes
  }

  dimension: submit_text {
    type: string
    sql: ${TABLE}.submit_text ;;
    label: "bad at scale"
  }

  dimension: submit_text_html {
    type: string
    sql: ${TABLE}.submit_text_html ;;
    hidden: yes
  }

  dimension: submit_text_label {
    type: string
    sql: ${TABLE}.submit_text_label ;;
    hidden: yes
  }

  dimension: subreddit_type {
    type: string
    sql: ${TABLE}.subreddit_type ;;
    label: "is this what I think it is"
  }

  dimension: subscribers {
    type: number
    sql: ${TABLE}.subscribers ;;
    label: "key metric"
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
    label: "bad at scale"
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
    label: "interesting for output"
  }

  dimension: user_sr_theme_enabled {
    type: yesno
    sql: ${TABLE}.user_sr_theme_enabled ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      display_name,
      name,
      posts1.count,
      posts2.count,
      posts3.count,
      posts4.count
    ]
  }
}
