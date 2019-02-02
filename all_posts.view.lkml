view: all_posts {
### THIS BRINGS ALL POST DATA INTO ONE TABLE
 derived_table: {
   sql:

  select * from Reddit_thesis_subreddits.posts1

  UNION ALL

  SELECT * from Reddit_thesis_subreddits.posts2

  UNION ALL

  SELECT * from Reddit_thesis_subreddits.posts3

  UNION ALL

  SELECT * from Reddit_thesis_subreddits.posts4 ;;
  persist_for: "50000 hours"
 }



### POST METADATA
dimension: id {
  primary_key: yes
  type: string
  sql: ${TABLE}.id ;;
}

dimension: author {
  type: string
  sql: ${TABLE}.author ;;
}

dimension: created {
  type: number
  sql: ${TABLE}.created ;;
}

dimension: created_utc {
  type: number
  sql: ${TABLE}.created_utc ;;
}

dimension: domain {
  type: string
  sql: ${TABLE}.domain ;;
  hidden: yes
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

dimension: name {
  type: string
  sql: ${TABLE}.name ;;
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

dimension: selftext {
  type: string
  sql: ${TABLE}.selftext ;;
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

dimension: title {
  type: string
  sql: ${TABLE}.title ;;
}

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

###POST KPIS
dimension: downs {
    type: number
    sql: ${TABLE}.downs ;;
    #key metric
  }

dimension: ups {
  type: number
  sql: ${TABLE}.ups ;;
}

dimension: num_comments {
    type: number
    sql: ${TABLE}.num_comments ;;
  }

dimension: gilded {
    type: number
    sql: ${TABLE}.gilded ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

###POST AGG

measure: count {
  type: count
  drill_fields: [id, name, subreddits.id, subreddits.display_name, subreddits.name]
}

measure: total_upvotes {
  type: number
  sql: sum(${ups}) ;;
}

#no data
# measure: total_downvotes {
#   type: number
#   sql: sum(${downs}) ;;
# }

measure: total_comments {
  type: number
  sql: sum(${num_comments}) ;;
}

#this broken
# measure: total_interactions {
#   type: number
#   sql: sum(${total_comments},${total_upvotes})  ;;
# }



###POSTER ANALYTICS

measure: unique_authors {
  type: count_distinct
  sql: ${author} ;;

#measure: Communities_per_author {}
#create derived table of all posters + all post metrics

#measure: Average_Communities_per_author:




}
}
# https://discourse.looker.com/t/how-to-have-one-view-for-multiple-database-tables/4003


### UNUSED DIMENSIONS
# dimension: archived {
#   type: yesno
#   sql: ${TABLE}.archived ;;
# }


# dimension: thumbnail {
#   type: string
#   sql: ${TABLE}.thumbnail ;;
#   hidden: yes
# }

# dimension: author_flair_css_class {
#   type: string
#   sql: ${TABLE}.author_flair_css_class ;;
#   hidden: yes
# }

# dimension: author_flair_text {
#   type: string
#   sql: ${TABLE}.author_flair_text ;;
#   hidden: yes
# }

# dimension: distinguished {
#   type: string
#   sql: ${TABLE}.distinguished ;;
# }

# dimension: hide_score {
#   type: yesno
#   sql: ${TABLE}.hide_score ;;
#   hidden: yes
# }

# dimension: is_self {
#   type: yesno
#   sql: ${TABLE}.is_self ;;
# }

# dimension: link_flair_css_class {
#   type: string
#   sql: ${TABLE}.link_flair_css_class ;;
#   hidden: yes
# }

# dimension: link_flair_text {
#   type: string
#   sql: ${TABLE}.link_flair_text ;;
#   hidden: yes
# }

# dimension: retrieved_on {
#   type: number
#   sql: ${TABLE}.retrieved_on ;;
#   hidden: yes
# }

# dimension: saved {
#   type: yesno
#   sql: ${TABLE}.saved ;;
#   hidden: yes
# }

# dimension: stickied {
#   type: yesno
#   sql: ${TABLE}.stickied ;;
#   hidden: yes
# }
