# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  rootURL: '/'

App.Router.map ()->
  @resource 'login'
  @resource 'users', ->
    @route 'show', path: '/:user_id'
