command Py execute '!python -c ' .
    \ shellescape(substitute(
    \ 'from module import *; import code; code.interact(local=locals())',
    \ 'module', expand('%:t:r'), ''))


"「-c」参数让 Python 接受命令并直接执行（python -c "print('hello')" 将直接打印出 hello），后续的命令则是 import 当前文件和 code 这个 module，然后使用 code.interact() 打开 REPL，如此便实现了进入 REPL 并 import 当前文件。expand('%:t:r') 让 Vim 提取不含路径和扩展名的当前文件名。

"作者：Zhao Min
"链接：https://www.zhihu.com/question/20271508/answer/150651537
"来源：知乎
"著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
