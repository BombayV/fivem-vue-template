-- Client sided code
RegisterCommand('visible', function()
  if not Data.IsVisible then
    Data.IsVisible = true
    U.UiMessage('isVisible', Data.IsVisible, Data.IsVisible)
  end
end)