"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.list<i64>, i32) -> i64}> ({
    ^bb0(%arg0: !vm.list<i64>, %arg1: i32):
      %0 = "vm.list.get.i64"(%arg0, %arg1) : (!vm.list<i64>, i32) -> i64
      "vm.return"(%0) : (i64) -> ()
    }) {sym_name = "list_get_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

