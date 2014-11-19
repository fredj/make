# project instance id
export instanceid = override_me

# the Unix user under which the modwsgi daemon processes are executed,
# can be overriden in development-specific buildout config files
export modwsgi_user = www-data

# url-path where the instance must respond.
export apache-entry-point = /$(instanceid)/

# cookie session secret
export authtkt_secret = $(uuidgen)

# database user
export dbuser = www-data

# database password
export dbpassword = www-data

# database host
export dbhost = localhost

# database port
export dbport = 5432

# database name
export db = override_me

# sqlalchemy schema
export schema = webapp

# ...
