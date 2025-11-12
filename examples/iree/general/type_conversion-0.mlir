"builtin.module"() ({
  "vm.module"() <{sym_name = "my_module"}> ({
    "vm.func"() <{function_type = (i32) -> ()}> ({
    ^bb0(%arg1: i32):
      %3 = "vm.list.alloc"(%arg1) : (i32) -> !vm.list<i32>
      %4 = "util.optimization_barrier"(%3) : (!vm.list<i32>) -> !vm.list<i32>
      "vm.return"() : () -> ()
    }) {sym_name = "list_alloc"} : () -> ()
    "vm.func"() <{function_type = (i32) -> ()}> ({
    ^bb0(%arg0: i32):
      %0 = "vm.list.alloc"(%arg0) : (i32) -> !vm.list<i32>
      %1 = "vm.list.size"(%0) : (!vm.list<i32>) -> i32
      %2 = "util.optimization_barrier"(%1) : (i32) -> i32
      "vm.return"() : () -> ()
    }) {sym_name = "list_size"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

