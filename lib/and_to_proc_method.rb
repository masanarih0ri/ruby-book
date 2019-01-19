reverse_proc = Proc.new{ |s| s.reverse }
# mapメソッドにブロックを渡す代わりに、Procオブジェクトを渡す
['Ruby', 'Java', 'Perl'].map(&reverse)
