Administrator.all.destroy_all
Administrator.create!(email: 'admin@example.com', password: 'password')

Plan.all.destroy_all
Plan.create!(name: 'ベーシック', description: "初めての方向け。\n価格を抑えつつ、主要セットをお試し。")
Plan.create!(name: 'スタンダード', description: "継続利用に最適な標準プラン。\nバランスの取れた食材量。")
Plan.create!(name: 'プレミアム', description: "高級な食材が入ったプラン。\n高級志向の方におすすめ。")
