
      insert into "inttegra_stage"."test"."fact_reviews" ("review_id", "listing_id", "review_date", "reviewer_name", "review_txt", "review_sentiment")
    (
        select "review_id", "listing_id", "review_date", "reviewer_name", "review_txt", "review_sentiment"
        from "fact_reviews__dbt_tmp102814839061"
    )


  