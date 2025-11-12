"builtin.module"() ({
  "vm.module"() <{sym_name = "no_speculate"}> ({
    "vm.func"() <{function_type = (i32, index, index, index) -> ()}> ({
    ^bb0(%arg18: i32, %arg19: index, %arg20: index, %arg21: index):
      "scf.for"(%arg19, %arg20, %arg21) ({
      ^bb0(%arg22: index):
        %2 = "vm.list.alloc"(%arg18) : (i32) -> !vm.list<i32>
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_alloc"} : () -> ()
    "vm.func"() <{function_type = (!vm.list<i32>, index, index, index) -> ()}> ({
    ^bb0(%arg13: !vm.list<i32>, %arg14: index, %arg15: index, %arg16: index):
      "scf.for"(%arg14, %arg15, %arg16) ({
      ^bb0(%arg17: index):
        %1 = "vm.list.size"(%arg13) : (!vm.list<i32>) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_size"} : () -> ()
    "vm.func"() <{function_type = (!vm.list<i32>, i32, index, index, index) -> ()}> ({
    ^bb0(%arg7: !vm.list<i32>, %arg8: i32, %arg9: index, %arg10: index, %arg11: index):
      "scf.for"(%arg9, %arg10, %arg11) ({
      ^bb0(%arg12: index):
        %0 = "vm.list.get.i32"(%arg7, %arg8) : (!vm.list<i32>, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_get"} : () -> ()
    "vm.func"() <{function_type = (!vm.list<i32>, i32, i32, index, index, index) -> ()}> ({
    ^bb0(%arg0: !vm.list<i32>, %arg1: i32, %arg2: i32, %arg3: index, %arg4: index, %arg5: index):
      "scf.for"(%arg3, %arg4, %arg5) ({
      ^bb0(%arg6: index):
        "vm.list.set.i32"(%arg0, %arg1, %arg2) : (!vm.list<i32>, i32, i32) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "list_set"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

