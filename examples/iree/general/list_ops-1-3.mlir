"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (!vm.list<i32>) -> i32}> ({
    ^bb0(%arg0: !vm.list<i32>):
      %0 = "vm.list.size"(%arg0) : (!vm.list<i32>) -> i32
      "vm.return"(%0) : (i32) -> ()
    }) {sym_name = "list_size"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

