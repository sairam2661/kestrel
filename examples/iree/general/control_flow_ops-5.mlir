"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.call"(%arg0) <{callee = @imported_fn}> : (i32) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "call_imported_fn"} : () -> ()
    "vm.import"() <{arg_attrs = [{vm.name = "arg0"}], function_type = (i32) -> i32, sym_name = "imported_fn", sym_visibility = "private"}> ({
    }) : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

