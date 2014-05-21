App.User = DS.Model.extend
  email: DS.attr('string')
  created_at: DS.attr('date')
  updated_at: DS.attr('date')
