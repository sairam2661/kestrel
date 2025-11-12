"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.export"() <{export_name = "fn", function_ref = @fn}> : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      "vm.return"(%arg0) : (i32) -> ()
    }) {sym_name = "fn"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

