"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 42 : i32}> : () -> i32
      %1 = "vm.list.alloc"(%0) : (i32) -> !vm.list<i32>
      %2 = "vm.const.i32"() <{value = 43 : i32}> : () -> i32
      "vm.list.reserve"(%1, %2) : (!vm.list<i32>, i32) -> ()
      %3 = "vm.list.size"(%1) : (!vm.list<i32>) -> i32
      %4 = "vm.const.i32"() <{value = 44 : i32}> : () -> i32
      "vm.list.resize"(%1, %4) : (!vm.list<i32>, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_common"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

