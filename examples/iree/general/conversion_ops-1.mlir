"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.ext.i8.i32.s"(%arg0) : (i32) -> i32
      %1 = "vm.ext.i8.i32.u"(%0) : (i32) -> i32
      %2 = "vm.ext.i16.i32.s"(%1) : (i32) -> i32
      %3 = "vm.ext.i16.i32.u"(%2) : (i32) -> i32
      "vm.return"(%3) : (i32) -> ()
    }) {sym_name = "ext"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

