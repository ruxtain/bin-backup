// 提示我自己，我用了 .zshrc 里的 alias mongo="mongo --quiet" 来去掉没有设置密码的warning，只求一个清爽

// 如果设置了一个变量，有 typo，那么不方便回过头来编辑，
// 可以使用 edit varname 进入 vim 编辑，:x 后就OK了。
EDITOR="/usr/bin/vim"


// 在提示符显示当前使用的 db
prompt = function() { return db + " > "};