App.UsersRoute = Ember.Route.extend(Ember.SimpleAuth.AuthenticatedRouteMixin)

App.UsersRoute.reopen
  model: ->
    @store.find('user')
