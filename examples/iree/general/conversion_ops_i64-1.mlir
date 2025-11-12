"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i64}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.ext.i32.i64.s"(%arg0) : (i32) -> i64
      %1 = "vm.ext.i32.i64.u"(%arg0) : (i32) -> i64
      "vm.return"(%1) : (i64) -> ()
    }) {sym_name = "ext_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

