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
}


# https://discourse.looker.com/t/how-to-have-one-view-for-multiple-database-tables/4003
#
