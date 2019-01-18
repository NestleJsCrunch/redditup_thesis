view: posts2 {
  sql_table_name: Reddit_thesis_subreddits.posts2 ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}.archived ;;
  }

  dimension: author {
    type: string
    sql: ${TABLE}.author ;;
  }

  dimension: author_flair_css_class {
    type: string
    sql: ${TABLE}.author_flair_css_class ;;
  }

  dimension: author_flair_text {
    type: string
    sql: ${TABLE}.author_flair_text ;;
  }

  dimension: created {
    type: number
    sql: ${TABLE}.created ;;
  }

  dimension: created_utc {
    type: number
    sql: ${TABLE}.created_utc ;;
  }

  dimension: distinguished {
    type: string
    sql: ${TABLE}.distinguished ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: downs {
    type: number
    sql: ${TABLE}.downs ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}.`from` ;;
  }

  dimension: from_id {
    type: string
    sql: ${TABLE}.from_id ;;
  }

  dimension: from_kind {
    type: string
    sql: ${TABLE}.from_kind ;;
  }

  dimension: gilded {
    type: number
    sql: ${TABLE}.gilded ;;
  }

  dimension: hide_score {
    type: yesno
    sql: ${TABLE}.hide_score ;;
  }

  dimension: is_self {
    type: yesno
    sql: ${TABLE}.is_self ;;
  }

  dimension: link_flair_css_class {
    type: string
    sql: ${TABLE}.link_flair_css_class ;;
  }

  dimension: link_flair_text {
    type: string
    sql: ${TABLE}.link_flair_text ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: num_comments {
    type: number
    sql: ${TABLE}.num_comments ;;
  }

  dimension: over_18 {
    type: yesno
    sql: ${TABLE}.over_18 ;;
  }

  dimension: permalink {
    type: string
    sql: ${TABLE}.permalink ;;
  }

  dimension: quarantine {
    type: yesno
    sql: ${TABLE}.quarantine ;;
  }

  dimension: retrieved_on {
    type: number
    sql: ${TABLE}.retrieved_on ;;
  }

  dimension: saved {
    type: yesno
    sql: ${TABLE}.saved ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: selftext {
    type: string
    sql: ${TABLE}.selftext ;;
  }

  dimension: stickied {
    type: yesno
    sql: ${TABLE}.stickied ;;
  }

  dimension: subreddit {
    type: string
    sql: ${TABLE}.subreddit ;;
  }

  dimension: subreddit_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.subreddit_id ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.thumbnail ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: ups {
    type: number
    sql: ${TABLE}.ups ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, subreddits.id, subreddits.display_name, subreddits.name]
  }
}
