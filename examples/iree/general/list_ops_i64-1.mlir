"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.list<i64>, i32, i64) -> ()}> ({
    ^bb0(%arg0: !vm.list<i64>, %arg1: i32, %arg2: i64):
      "vm.list.set.i64"(%arg0, %arg1, %arg2) : (!vm.list<i64>, i32, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_set_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

