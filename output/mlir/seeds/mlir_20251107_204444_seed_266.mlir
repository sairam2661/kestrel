"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_mix"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1, "eq") : (i32, i32) -> i1
    "scf.if"(%2) ({
    ^bb1:
      %3 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
      %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%arg1) : (tensor<4x4xi32>) -> ()
  }) : () -> (tensor<4x4xi32>)
}) : () -> ()