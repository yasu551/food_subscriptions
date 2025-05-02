# Administrator.find_or_create_by!(email: 'admin@example.com', password: 'password')

Plan.find_or_create_by!(name: 'ベーシック', description: "初めての方向け。\n価格を抑えつつ、主要セットをお試し。")
Plan.find_or_create_by!(name: 'スタンダード', description: "継続利用に最適な標準プラン。\nバランスの取れた食材量。")
Plan.find_or_create_by!(name: 'プレミアム', description: "高級な食材が入ったプラン。\n高級志向の方におすすめ。")


IngredientSet.find_or_create_by!(name: 'おまかせバランスセット',
                                 price: 2_500,
                                 content: "鶏胸肉（200g×2）、旬野菜ミックス（キャベツ・にんじん・ピーマン 各200g）、玄米（300g）、卵（2個）",
                                 weight: 3.5,
                                 refrigerated: true,
                                 allergy_info: "卵")
IngredientSet.find_or_create_by!(name: 'シーフードプレミアムセット',
                                 price: 4_500,
                                 content: "鮭切り身（150g×2）、ホタテ貝柱（100g×2）、エビ（殻付き150g）、ほうれん草（200g）、トマト（2個）",
                                 weight: 3.0,
                                 refrigerated: true,
                                 allergy_info: "えび・かに・魚介")
IngredientSet.find_or_create_by!(name: 'ベジタリアンヘルシーセット',
                                 price: 2_000,
                                 content: "豆腐（300g×2）、きのこミックス（しめじ・まいたけ 各100g）、キャベツ（200g）、ブロッコリー（1株）",
                                 weight: 3.0,
                                 refrigerated: true,
                                 allergy_info: "大豆")
IngredientSet.find_or_create_by!(name: 'キッズフレンドリーセット',
                                 price: 2_800,
                                 content: "ミニトマト（150g）、鶏もも肉（150g×2）、じゃがいも（2個）、にんじん（1本）、コーン缶（100g）",
                                 weight: 3.2,
                                 refrigerated: true)
IngredientSet.find_or_create_by!(name: '季節の彩りセット',
                                 price: 2_000,
                                 content: "旬野菜ミックス（里芋・菊菜・さつまいも 各200g）、旬果（りんご1個・キウイ2個）",
                                 weight: 2.5,
                                 refrigerated: false)

