include: "all_posts.view.lkml"

view: poster_metrics {

derived_table: {
 sql:
SELECT author, ups, downs, subreddit, created
FROM ${all_posts.SQL_TABLE_NAME} ;;
}

dimension: author {
  type: string
  sql: ${TABLE}.author ;;
}

  dimension: ups {
    type: number
    sql: ${TABLE}.ups ;;
  }

  dimension: downs {
    type: number
    sql: ${TABLE}.downs ;;
  }

  dimension: subreddit {
    type: string
    sql: ${TABLE}.subreddit ;;
  }

  dimension: created_date {
    type: number
    sql: ${TABLE}.created ;;
  }

   measure: count_subreddits_perauthor {
     type: number
    sql: count(${subreddit}) ;;
    }


# measure: subreddits_by_author  {}

}
