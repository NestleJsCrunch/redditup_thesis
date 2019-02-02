connection: "thesis_proj"

# include all the views
include: "*.view"

datagroup: redditup_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: redditup_default_datagroup

explore: mongin_reddit {
  from: subreddits
}

explore: mongin_posts {
  from: all_posts
}

explore: all_posts {
  from: all_posts
}

explore: poster_metrics {
  from: poster_metrics
}


###Diagnostics for unit testing on abscence of key metrics
explore: dia_post1 {
  from: posts1
}

explore: dia_post2 {
  from: posts2
}

explore: dia_post3 {
  from: posts3
}

explore: dia_post4 {
  from: posts4
}
