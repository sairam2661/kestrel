"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, tensor<2x3xi32>) -> (i64, tensor<3x2xi32>), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: tensor<2x3xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.muliz"(%arg1, %0) : (i64, i32) -> i64
    %2 = "arith.subi"(%0, %arg0) : (i32, i32) -> i32
    %3 = "arith.const"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
    %5 = "arith.extsi"(%4) : (i32) -> i64
    %6 = "tosa.transpose"(%arg2) <{perm = [1, 0]}> : (tensor<2x3xi32>) -> tensor<3x2xi32>
    "func.return"(%5, %6) : (i64, tensor<3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()