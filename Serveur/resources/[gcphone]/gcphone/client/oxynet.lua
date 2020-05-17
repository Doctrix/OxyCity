--====================================================================================
-- #Author: Jonathan D @ Gannon
--====================================================================================

RegisterNetEvent("gcPhone:oxynet_getOxynets")
AddEventHandler("gcPhone:oxynet_getOxynets", function(oxynets)
  SendNUIMessage({event = 'oxynet_oxynets', oxynets = oxynets})
end)

RegisterNetEvent("gcPhone:oxynet_getFavoriteOxynets")
AddEventHandler("gcPhone:oxynet_getFavoriteOxynets", function(oxynets)
  SendNUIMessage({event = 'oxynet_favoriteoxynets', oxynets = oxynets})
end)

RegisterNetEvent("gcPhone:oxynet_newOxynets")
AddEventHandler("gcPhone:oxynet_newOxynets", function(oxynet)
  SendNUIMessage({event = 'oxynet_newOxynet', oxynet = oxynet})
end)

RegisterNetEvent("gcPhone:oxynet_updateOxynetLikes")
AddEventHandler("gcPhone:oxynet_updateOxynetLikes", function(oxynetId, likes)
  SendNUIMessage({event = 'oxynet_updateOxynetLikes', oxynetId = oxynetId, likes = likes})
end)

RegisterNetEvent("gcPhone:oxynet_setAccount")
AddEventHandler("gcPhone:oxynet_setAccount", function(username, password, avatarUrl)
  SendNUIMessage({event = 'oxynet_setAccount', username = username, password = password, avatarUrl = avatarUrl})
end)

RegisterNetEvent("gcPhone:oxynet_createAccount")
AddEventHandler("gcPhone:oxynet_createAccount", function(account)
  SendNUIMessage({event = 'oxynet_createAccount', account = account})
end)

RegisterNetEvent("gcPhone:oxynet_showError")
AddEventHandler("gcPhone:oxynet_showError", function(title, message)
  SendNUIMessage({event = 'oxynet_showError', message = message, title = title})
end)

RegisterNetEvent("gcPhone:oxynet_showSuccess")
AddEventHandler("gcPhone:oxynet_showSuccess", function(title, message)
  SendNUIMessage({event = 'oxynet_showSuccess', message = message, title = title})
end)

RegisterNetEvent("gcPhone:oxynet_setOxynetLikes")
AddEventHandler("gcPhone:oxynet_setOxynetLikes", function(oxynetId, isLikes)
  SendNUIMessage({event = 'oxynet_setOxynetLikes', oxynetId = oxynetId, isLikes = isLikes})
end)



RegisterNUICallback('oxynet_login', function(data, cb)
  TriggerServerEvent('gcPhone:oxynet_login', data.username, data.password)
end)
RegisterNUICallback('oxynet_changePassword', function(data, cb)
  TriggerServerEvent('gcPhone:oxynet_changePassword', data.username, data.password, data.newPassword)
end)


RegisterNUICallback('oxynet_createAccount', function(data, cb)
  TriggerServerEvent('gcPhone:oxynet_createAccount', data.username, data.password, data.avatarUrl)
end)

RegisterNUICallback('oxynet_getOxynets', function(data, cb)
  TriggerServerEvent('gcPhone:oxynet_getOxynets', data.username, data.password)
end)

RegisterNUICallback('oxynet_getFavoriteOxynets', function(data, cb)
  TriggerServerEvent('gcPhone:oxynet_getFavoriteOxynets', data.username, data.password)
end)

RegisterNUICallback('oxynet_postOxynet', function(data, cb)
  TriggerServerEvent('gcPhone:oxynet_postOxynets', data.username or '', data.password or '', data.message)
end)

RegisterNUICallback('oxynet_toggleLikeOxynet', function(data, cb)
  TriggerServerEvent('gcPhone:oxynet_toogleLikeOxynet', data.username or '', data.password or '', data.oxynetId)
end)

RegisterNUICallback('oxynet_setAvatarUrl', function(data, cb)
  TriggerServerEvent('gcPhone:oxynet_setAvatarUrl', data.username or '', data.password or '', data.avatarUrl)
end)
