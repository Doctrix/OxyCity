--====================================================================================
-- #Author: Jonathan D @ Gannon
--====================================================================================

RegisterNetEvent("gcPhone:facebook_getPosts")
AddEventHandler("gcPhone:facebook_getPosts", function(posts)
  SendNUIMessage({event = 'facebook_posts', posts = posts})
end)

RegisterNetEvent("gcPhone:facebook_getFavoritePosts")
AddEventHandler("gcPhone:facebook_getFavoritePosts", function(posts)
  SendNUIMessage({event = 'facebook_favoriteposts', posts = posts})
end)

RegisterNetEvent("gcPhone:facebook_newPosts")
AddEventHandler("gcPhone:facebook_newPosts", function(post)
  SendNUIMessage({event = 'facebook_newPost', post = post})
end)

RegisterNetEvent("gcPhone:facebook_updatePostLikes")
AddEventHandler("gcPhone:facebook_updatePostLikes", function(postId, likes)
  SendNUIMessage({event = 'facebook_updatePostLikes', postId = postId, likes = likes})
end)

RegisterNetEvent("gcPhone:facebook_setAccount")
AddEventHandler("gcPhone:facebook_setAccount", function(username, password, avatarUrl)
  SendNUIMessage({event = 'facebook_setAccount', username = username, password = password, avatarUrl = avatarUrl})
end)

RegisterNetEvent("gcPhone:facebook_createAccount")
AddEventHandler("gcPhone:facebook_createAccount", function(account)
  SendNUIMessage({event = 'facebook_createAccount', account = account})
end)

RegisterNetEvent("gcPhone:facebook_showError")
AddEventHandler("gcPhone:facebook_showError", function(title, message)
  SendNUIMessage({event = 'facebook_showError', message = message, title = title})
end)

RegisterNetEvent("gcPhone:facebook_showSuccess")
AddEventHandler("gcPhone:facebook_showSuccess", function(title, message)
  SendNUIMessage({event = 'facebook_showSuccess', message = message, title = title})
end)

RegisterNetEvent("gcPhone:facebook_setPostLikes")
AddEventHandler("gcPhone:facebook_setPostLikes", function(postId, isLikes)
  SendNUIMessage({event = 'facebook_setPostLikes', postId = postId, isLikes = isLikes})
end)



RegisterNUICallback('facebook_login', function(data, cb)
  TriggerServerEvent('gcPhone:facebook_login', data.username, data.password)
end)
RegisterNUICallback('facebook_changePassword', function(data, cb)
  TriggerServerEvent('gcPhone:facebook_changePassword', data.username, data.password, data.newPassword)
end)


RegisterNUICallback('facebook_createAccount', function(data, cb)
  TriggerServerEvent('gcPhone:facebook_createAccount', data.username, data.password, data.avatarUrl)
end)

RegisterNUICallback('facebook_getPosts', function(data, cb)
  TriggerServerEvent('gcPhone:facebook_getPosts', data.username, data.password)
end)

RegisterNUICallback('facebook_getFavoritePosts', function(data, cb)
  TriggerServerEvent('gcPhone:facebook_getFavoritePosts', data.username, data.password)
end)

RegisterNUICallback('facebook_postPost', function(data, cb)
  TriggerServerEvent('gcPhone:facebook_postPosts', data.username or '', data.password or '', data.message)
end)

RegisterNUICallback('facebook_toggleLikePost', function(data, cb)
  TriggerServerEvent('gcPhone:facebook_toogleLikePost', data.username or '', data.password or '', data.PostId)
end)

RegisterNUICallback('facebook_setAvatarUrl', function(data, cb)
  TriggerServerEvent('gcPhone:facebook_setAvatarUrl', data.username or '', data.password or '', data.avatarUrl)
end)
