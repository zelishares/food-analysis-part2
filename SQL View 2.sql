-- view_question_2

CREATE OR REPLACE VIEW public.view_question_2
AS SELECT ic.ingredient,
    ic.count,
    f."Food Group",
    f."Calories",
    f."Fat (g)",
    f."Protein (g)",
    f."Carbohydrate (g)",
    f."Sugars (g)",
    f."Saturated Fats (g)",
    f."Potassium, K (mg)",
    f."Vitamin D (mcg)",
    f."Trans Fatty Acids (g)",
    f."Sodium (mg)"
   FROM ingredients_counts ic
     LEFT JOIN facts f ON lower(f.name) = ic.ingredient
  WHERE f."ID" IS NOT NULL;