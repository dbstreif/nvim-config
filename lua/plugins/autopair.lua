return {
{
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    branch='v0.6', --recommended as each new version will have breaking changes
    opts={
        --Config goes here
        extensions={cond={cond=function(fn) return not fn.in_macro() end}}
    },
},


}
