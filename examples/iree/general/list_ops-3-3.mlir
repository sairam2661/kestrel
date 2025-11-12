"builtin.module"() ({
  "vm.module"() <{sym_name = "module"}> ({
    "vm.func"() <{function_type = (!vm.list<!vm.buffer>) -> ()}> ({
    ^bb0(%arg0: !vm.list<!vm.buffer>):
      %0 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %1 = "vm.list.get.ref"(%arg0, %0) : (!vm.list<!vm.buffer>, i32) -> !vm.buffer
      "vm.list.set.ref"(%arg0, %0, %1) : (!vm.list<!vm.buffer>, i32, !vm.buffer) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_ref_typed"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

