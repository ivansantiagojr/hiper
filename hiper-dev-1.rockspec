package = "hiper"
version = "dev-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.6",
   queries = {
      {
         constraints = {
            {
               op = ">=",
               version = {
                  5, 1, string = "5.1"
               }
            },
            {
               op = "<",
               version = {
                  5, 6, string = "5.6"
               }
            }
         },
         name = "lua"
      }
   }
}
build_dependencies = {
   queries = {}
}
build = {
   type = "builtin",
   modules = {}
}
test_dependencies = {
   queries = {}
}
