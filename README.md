# Table of Content

1. [Bash Tutorial](#Bash-Tutorial)
2. [Make README a shell script](#Make-README-a-shell-script)
3. [Vim things](#Vim-things)
4. [Bash](#Bash)
5. [License](#License)

# Bash Tutorial

Bash tutorial from mostly https://linuxconfig.org/bash-scripting-tutorial
There are other tutorials too which I used to understand/implement Bash in vim.

# Make README a shell script
: shell script

## For loop

```shell
for a in `seq 1 10`; do
    echo "Hello $a"
    sleep 1;
done
```

## run the bash
```shell
chmod +x markdown.md
./markdown.md
```

# Vim things

## Run the current command line as filter .!command in vim

`.!bash`

## format column

- create content
add | in between columns (or any separator)
- run the column command
`!column -t -s '|'`

# Bash

Bash is very powerful and been there for quite sometime.
Vim is powerful and along with bash it becomes more powerful.

Bash is as easy as writing any other code or using terminal.

# License

The MIT License (MIT)

Copyright (c) 2022 Abhijeet

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

