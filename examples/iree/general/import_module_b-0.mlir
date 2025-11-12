"builtin.module"() ({
  "vm.module"() <{sym_name = "module_b"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.mul.i32"(%arg0, %arg0) : (i32, i32) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "square"} : () -> ()
    "vm.export"() <{export_name = "square", function_ref = @square}> : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

