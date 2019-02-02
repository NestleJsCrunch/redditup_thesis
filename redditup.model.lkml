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

explore: test_post1 {
  from: posts1
}
