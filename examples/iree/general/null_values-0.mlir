"builtin.module"() ({
  "func.func"() <{function_type = (!vm.list<i32>) -> (i32, !vm.list<i32>), sym_name = "null_values"}> ({
  ^bb0(%arg0: !vm.list<i32>):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    "func.return"(%0, %arg0) : (i32, !vm.list<i32>) -> ()
  }) : () -> ()
}) : () -> ()

