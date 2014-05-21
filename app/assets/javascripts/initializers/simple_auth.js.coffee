# initialize ember simple auth
Ember.Application.initializer
  name: 'authentication'
  initialize: (container, application) ->
    Ember.SimpleAuth.Authenticators.OAuth2.reopen
      serverTokenEndpoint: '/oauth/token'

    # customize the session so that it allows access to the current user
    Ember.SimpleAuth.Session.reopen
      currentUser: Ember.computed 'currentUser', ->
        userId = @get('resource_owner_id')
        container.lookup('store:main').find('user', userId) if userId

    Ember.SimpleAuth.setup container, application,
      authorizerFactory: 'ember-simple-auth-authorizer:oauth2-bearer'
