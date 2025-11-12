"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (!vm.list<i32>) -> ()}> ({
    ^bb0(%arg1: !vm.list<i32>):
      %2 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %3 = "vm.list.get.i32"(%arg1, %2) : (!vm.list<i32>, i32) -> i32
      %4 = "vm.const.i32"() <{value = 123 : i32}> : () -> i32
      "vm.list.set.i32"(%arg1, %2, %4) : (!vm.list<i32>, i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_i32"} : () -> ()
    "vm.func"() <{function_type = (!vm.list<i8>) -> ()}> ({
    ^bb0(%arg0: !vm.list<i8>):
      %0 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %1 = "vm.list.get.i32"(%arg0, %0) : (!vm.list<i8>, i32) -> i32
      "vm.list.set.i32"(%arg0, %0, %1) : (!vm.list<i8>, i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_i8_coerce"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

