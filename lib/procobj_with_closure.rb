# Procオブジェクトを生成して返却するメソッド
def generate_proc(array)
  counter = 0
  # Procオブジェクトにメソッドの戻り値とする。このProc.newでProcオブジェクトを作る
  Proc.new do
    # ローカル変数のcounterを加算
    counter += 10
    # メソッド引数のarrayにcounterの値を追加する
    array << counter
  end
end

values = []
# sample_procには戻り値としてProcオブジェクトがはいる
sample_proc = generate_proc(values)
# ここで、generate_procメソッドの実行は終わっているが、Procオブジェクト（ここではsample_proc）の中では
# generate_procメソッドのメソッド引数のarrayやcounterは生きている状態
# なので、Procオブジェクトを実行するとcounterへの加算やarrayへの追加が問題なくできる
# 結果として最初に宣言したvaluesの中身がProcオブジェクトを実行するたびに変わることになる
# この時点でvaluesは空のまま
print values

# counterに10が加算されて、arrayにcounterの内容がはいる。
sample_proc.call
# 一連の流れが終わった後の戻り値はvalues[10]なので、[10]が帰ってくる
print values

# もう一度呼び出し values=[10]から、counterは10+10=20となって、array=[10, 20]となる
sample_proc.call
print values
