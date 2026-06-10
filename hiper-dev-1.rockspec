rockspec_format = '3.0'
package = 'hiper'
version = 'dev-1'
source = {
    url = 'https://github.com/ivansantiagojr/hiper.git',
}
description = {
    summary = 'A Lua micro web framework that nobody should use.',
    homepage = 'https://github.com/ivansantiagojr/hiper',
    license = 'MIT',
}
dependencies = {
    'lua >= 5.1, < 5.6',
    'pegasus >= 1.1, <1.2',
}
build = {
    type = 'builtin',
    modules = {},
}
test_dependencies = {
    'busted',
}
test = {
    type = 'busted',
}
