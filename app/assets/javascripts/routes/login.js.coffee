App.LoginRoute = Ember.Route.extend
  # clear a potentially stale error message from previous login attempts
  setupController:(controller, model) ->
    controller.set 'errorMessage', null

  actions:
    # display an error when authentication fails
    sessionAuthenticationFailed:(error) ->
      message = error.error_description
      @controller.set 'errorMessage', message

    closeErrorMessage: ->
      @controller.set 'errorMessage', null
