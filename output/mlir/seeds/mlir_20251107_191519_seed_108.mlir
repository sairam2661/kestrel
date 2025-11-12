"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, tensor<3x3xi8>) -> (i32, tensor<3x3xi8>), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: tensor<3x3xi8>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg1) <{operation = "slt"}> : (i32, i64) -> i1
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "scf.if"(%1) ({
  ^bb1:
      %4 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> i32
    }) {
  } : (i1) -> (i32)
    %5 = "tosa.reduce_max"(%arg2) <{axis = 1 : i32, nan_mode = "IGNORE"}> : (tensor<3x3xi8>) -> tensor<3xi8>
    "func.return"(%3, %5) : (i32, tensor<3xi8>) -> ()
  }) : (i32, tensor<3x3xi8>) -> (i32, tensor<3xi8>)
}) : () -> ()