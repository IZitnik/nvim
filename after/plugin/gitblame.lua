vim.g.gitblame_display_virtual_text = 0
local blame_msg = {
	author = true,
	commit = true,
	date = false,
}
local function build_msg()
	vim.g.gitblame_message_template = ''
	local tmp_table = {}
	if blame_msg.date then
		table.insert(tmp_table, '<date>')
	end
	if blame_msg.author then
		table.insert(tmp_table, '<author>')
	end
	if blame_msg.commit then
		table.insert(tmp_table, '<summary>')
	end
	vim.g.gitblame_message_template = table.concat(tmp_table, ' • ')
end

local function gitblame_toggle(toggl_ind)
	if toggl_ind == 1 then
		if blame_msg.author == true then blame_msg.author = false else blame_msg.author = true end
	elseif toggl_ind == 2 then
		if blame_msg.commit == true then blame_msg.commit = false else blame_msg.commit = true end
	elseif toggl_ind == 3 then
		if blame_msg.date == true then blame_msg.date = false else blame_msg.date = true end
	else
		print('Invalid toggle index')
	end

	build_msg()
end

build_msg()
vim.g.gitblame_message_when_not_committed = 'Not committed!'

vim.keymap.set("n", "<leader>pgba", function() gitblame_toggle(1) end)
vim.keymap.set("n", "<leader>pgbc", function() gitblame_toggle(2) end)
vim.keymap.set("n", "<leader>pgbd", function() gitblame_toggle(3) end)
