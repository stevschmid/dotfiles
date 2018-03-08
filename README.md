# dotfiles

My personal dotfiles, targeted towards OSX, Ruby, Vim and tmux.

Some inspiration drawn by holman's dotfiles and luxflux's dotfiles.

## Color shenanigans

Check if this works inside tmux to get the full true color ownage:

```
awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s s s s s s s s s s s s s s s s;
    for (colnum = 0; colnum<256; colnum++) {
        r = 255-(colnum*255/255);
        g = (colnum*510/255);
        b = (colnum*255/255);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm", r,g,b;
        printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
        printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
}'
```

Otherwise check this troubleshooting issue: https://github.com/tmux/tmux/issues/696

It's important that the $TERM outside is set to the same $TERM inside (plus 256c support).

Check if True color is enabled inside tmux via

`tmux info | grep Tc`

