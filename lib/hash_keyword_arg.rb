def buy_burger(menu, drink: true, potato: true)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

# チーズバーガーとドリンクとポテトを購入する
buy_burger('cheese', drink: true, potato: true)

# フィッシュバーガーとドリンクを購入する
buy_burger('fish', drink: true, potato: false)
