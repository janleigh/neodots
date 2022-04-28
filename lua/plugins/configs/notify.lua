local present, notify = pcall(require, "notify")
if not present then
    return
end

notify.setup({
    minimum_width = 40,
    stages = "fade_in_slide_out",
    background_colour = "NormalFloat",
})
