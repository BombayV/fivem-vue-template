RegisterNUICallback('hideUi', function(data, cb)
  if Data.IsVisible then
    Data.IsVisible = false
    U.UiMessage('isVisible', Data.IsVisible, Data.IsVisible)
  end
end)