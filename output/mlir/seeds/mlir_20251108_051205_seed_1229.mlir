"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "mix_arith_tosa"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "tosa.const"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.addi"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.muli"(%0, %2) : (i32, i32) -> i32
    "func.return"(%4, %5) : (i32, i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "transpose"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "tosa.transpose"(%arg0) <{perm = [1, 0]}> : (tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()