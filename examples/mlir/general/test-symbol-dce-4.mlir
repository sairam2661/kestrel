"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dead_private_function", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "live_private_function", sym_visibility = "private"}> ({
  }) : () -> ()
  "live.user"() {uses = [@live_private_function]} : () -> ()
  "live.user"() {uses = [@unknown_symbol]} : () -> ()
}) : () -> ()

