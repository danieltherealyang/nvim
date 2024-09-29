local wk = require("which-key")
wk.add({
    mode = {"n"},
    {"mx", desc="Set mark x"},
    {"m,", desc="Set the next available alphabetical (lowercase) mark"},
    {"m;", desc="Toggle the next available mark at the current line"},
    {"dmx", desc="Delete mark x"},
    {"dm-", desc="Delete all marks on the current line"},
    {"dm<space>", desc="Delete all marks in the current buffer"},
    {"m]", desc="Move to next mark"},
    {"m[", desc="Move to previous mark"},
    {"m:", desc="Preview mark"},
    {"m[0-9]", desc="Add a bookmark from bookmark group[0-9]"},
    {"dm[0-9]", desc="Delete all bookmarks from bookmark group[0-9]"},
    {"m}", desc="Move to the next bookmark having the same type"},
    {"m{", desc="Move to the previous bookmark with same type"},
    {"dm=", desc="Delete the bookmark under the cursor"}
})
