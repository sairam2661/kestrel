"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xi32>, index) -> (i32), sym_name = "complex_test"}> ({
  ^bb0(%arg0: tensor<4x8xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 7 : index}> : () -> index
    %2:2 = "scf.execute_region"() ({
      %3 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      %4 = "arith.subi"(%3, %1) : (i32, index) -> i32
      "scf.yield"(%4, %3) : (i32, i32) -> ()
    }) : () -> (i32, i32)
    "func.return"(%2#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()