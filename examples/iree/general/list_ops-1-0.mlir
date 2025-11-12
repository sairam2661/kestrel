"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> !vm.list<i32>}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.list.alloc"(%arg0) : (i32) -> !vm.list<i32>
      "vm.return"(%0) : (!vm.list<i32>) -> ()
    }) {sym_name = "list_alloc"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

