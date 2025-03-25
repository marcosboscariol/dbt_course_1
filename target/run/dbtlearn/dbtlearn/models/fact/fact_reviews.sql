
      insert into "inttegra_stage"."test"."fact_reviews" ("listing_id", "review_date", "reviewer_name", "review_txt", "review_sentiment")
    (
        select "listing_id", "review_date", "reviewer_name", "review_txt", "review_sentiment"
        from "fact_reviews__dbt_tmp162242837506"
    )


  