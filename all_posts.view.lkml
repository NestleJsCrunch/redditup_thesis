view: all_posts {
 derived_table: {
   sql:

  select * from posts1

  UNION ALL

  SELECT * FROM posts2

  UNION ALL

  SELECT * FROM posts3

  UNION ALL

  SELECT * FROM posts4 ;;
 }

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
  hidden: yes
}

dimension: author_flair_text {
  type: string
  sql: ${TABLE}.author_flair_text ;;
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

dimension: distinguished {
  type: string
  sql: ${TABLE}.distinguished ;;
}

dimension: domain {
  type: string
  sql: ${TABLE}.domain ;;
  hidden: yes
}

dimension: downs {
  type: number
  sql: ${TABLE}.downs ;;
  #key metric
}

dimension: from {
  type: string
  sql: ${TABLE}.`from` ;;
  hidden: yes
}

dimension: from_id {
  type: string
  sql: ${TABLE}.from_id ;;
  hidden: yes
}

dimension: from_kind {
  type: string
  sql: ${TABLE}.from_kind ;;
  hidden: yes
}

dimension: gilded {
  type: number
  sql: ${TABLE}.gilded ;;
}

dimension: hide_score {
  type: yesno
  sql: ${TABLE}.hide_score ;;
  hidden: yes
}

dimension: is_self {
  type: yesno
  sql: ${TABLE}.is_self ;;
}

dimension: link_flair_css_class {
  type: string
  sql: ${TABLE}.link_flair_css_class ;;
  hidden: yes
}

dimension: link_flair_text {
  type: string
  sql: ${TABLE}.link_flair_text ;;
  hidden: yes
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
  hidden: yes
}

dimension: saved {
  type: yesno
  sql: ${TABLE}.saved ;;
  hidden: yes
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
  hidden: yes
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
  hidden: yes
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
# https://discourse.looker.com/t/how-to-have-one-view-for-multiple-database-tables/4003
#
