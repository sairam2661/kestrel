"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "sum"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "scf.for"(%1, %2, %3, %0) ({
    ^bb0(%arg0: index, %arg1: i32):
      %6 = "arith.addi"(%arg1, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

