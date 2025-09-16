"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "nested_region4"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "scf.for"(%arg0, %arg1, %arg2, %0) ({
    ^bb0(%arg3: index, %arg4: i32):
      %3 = "arith.addi"(%arg4, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

