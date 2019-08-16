ActiveSupport::Inflector.inflections do |inflect|
  inflect.singular /^(.+[bcdfghjklmnpqrstvwxyz]i)s$/i, '\1'
  inflect.plural /^(.+[bcdfghjklmnpqrstvwxyz]i)$/i, '\1s'

  inflect.singular /^(.+[bdfghjklmnpqrtvwxyz][bcdfghjklmnpqrtvwxyz])s$/i, '\1'
  inflect.plural /^(.+[bdfghjklmnpqrtvwxyz][bcdfghjklmnpqrtvwxyz])$/i, '\1s'

  inflect.singular /^(.+[aeéiou])s$/i, '\1'
  inflect.plural /^(.+[aeéiou])$/i, '\1s'

  inflect.singular /^(.+[íú])es$/i, '\1'
  inflect.plural /^(.+[íú])$/i, '\1es'

  inflect.singular /^(.+[áó])s$/i, '\1'
  inflect.plural /^(.+[áó])$/i, '\1s'

  inflect.singular /^(.+[xs])es$/i, '\1'
  inflect.plural /^(.+[xs])$/i, '\1es'

  inflect.singular /^(.+[^c][bcfghkmpqtvwy])s$/i, '\1'
  inflect.plural /^(.+[^c][bcfghkmpqtvwy])$/i, '\1s'

  inflect.singular /^(.+[aáeéiíoóuú]y)es$/i, '\1'
  inflect.plural /^(.+[aáeéiíoóuú]y)$/i, '\1es'

  inflect.singular /^(.+ch)es$/i, '\1'
  inflect.plural /^(.+ch)$/i, '\1es'

  inflect.singular /^(.+[aáeéiíoóuú])ces$/i, '\1z'
  inflect.plural /^(.+[aáeéiíoóuú])z$/i, '\1ces'
  inflect.singular /^(.+[aáeéiíoóuú][lrndj])es$/i, '\1'
  inflect.plural /^(.+[aáeéiíoóuú][lrndj])$/i, '\1es'

  inflect.irregular 'user', 'users'
  inflect.irregular 'User', 'Users'

  inflect.irregular 'rol', 'roles'
  inflect.irregular 'Rol', 'Roles'
end
