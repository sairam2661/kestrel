"builtin.module"() ({
  "func.func"() <{function_type = (i32, !secretsecrettensor1xi32, !tfhe_rusteui4) -> i32, sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: !secretsecrettensor1xi32, %arg2: !tfhe_rusteui4):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "secret.generic"(%arg1, %arg2) ({
    ^bb0(%arg3: tensor<1xi32>, %arg4: !tfhe_rusteui4):
      %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %6 = "arith.muli"(%arg5, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, tensor<1xi32>) -> tensor<1xi32>
      %7 = "tensor.extract"(%6, %0) : (tensor<1xi32>, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secretsecrettensor1xi32, !tfhe_rusteui4) -> !secretsecreti32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arithoverflownone}> : (i32, !secretsecreti32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()