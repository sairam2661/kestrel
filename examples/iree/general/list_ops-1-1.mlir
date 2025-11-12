"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.list<i32>, i32) -> ()}> ({
    ^bb0(%arg0: !vm.list<i32>, %arg1: i32):
      "vm.list.reserve"(%arg0, %arg1) : (!vm.list<i32>, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_reserve"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

