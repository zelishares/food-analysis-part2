-- view_question_4

CREATE OR REPLACE VIEW public.view_question_4
AS SELECT tc.name,
    tc.user_ratings_score AS rating,
    tc.nutrition_protein AS protein,
    tc.nutrition_fat AS fat,
    tc.nutrition_calories AS calories,
    tc.nutrition_sugar AS sugar,
    tc.nutrition_carbohydrates AS carbohydrates
   FROM tasty_clean tc
  WHERE tc.user_ratings_score > 0.90::double precision AND tc.user_ratings_count_positive > 500::double precision
  ORDER BY tc.user_ratings_score DESC;