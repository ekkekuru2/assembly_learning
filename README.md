

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


