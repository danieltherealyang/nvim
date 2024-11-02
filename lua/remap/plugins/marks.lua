local wk = require("which-key")
wk.add({
    mode = {"n"},
    {"m]]", desc="Move to next mark"},
    {"m[[", desc="Move to previous mark"},
    {"m;", desc="Toggle the next available mark at the current line"},
    {"mbd", desc="Delete all marks in the current buffer"},
})
