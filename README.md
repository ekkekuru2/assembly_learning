
# gccのオプションについて


- -S: バイナリを出力
- -O0: 最適化を無効化します（デフォルトですが明示的に付けると安心です）。Cのコード構造がそのままアセンブリに直訳されるため、最初はこの状態から学ぶのが基本です。
- -fno-asynchronous-unwind-tables: .cfi_ から始まるスタック展開用のデバッグ情報を抑制します。これが一番ノイズを減らしてくれます。
- -fno-ident: コンパイラのバージョン情報などを出力しないようにします。
- -fverbose-asm: 出力されるアセンブリコードの中に、「どの変数がどのレジスタ・メモリに割り当てられたか」や、「対応するC言語のコード」をコメントとして付与してくれます。Cコードとアセンブリの対応関係を追うのに最適です。

- -masm=intel: Intel記法で書く

## includeのパスについて
(Claude Opus 5)

### 1. 自分の環境の検索パスを見る

```sh
echo | gcc -xc -E -v - 2>&1 | grep -A20 'search starts here'
```

### 2. 実際にどのファイルが読まれたか見る

```sh
echo '#include <stdio.h>' > t.c && gcc -H -E t.c > /dev/null
```

### 3. パスを追加して挙動が変わることを確認する

```sh
mkdir -p mylib && echo '#define HELLO 1' > mylib/hello.h
echo '#include <hello.h>' > t2.c
gcc -E t2.c                  # エラーになる
gcc -E -Imylib t2.c          # 通る
```


