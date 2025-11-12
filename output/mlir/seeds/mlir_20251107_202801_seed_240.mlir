"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<i4>) -> tensor<i4>, sym_name = "process_tensor"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<10x20xi4>):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %c2_i32) : (i32, i32) -> i32
    %2 = "tosa.cast"(%arg1) <{new_type = tensor<10x20xi8>}> : (tensor<10x20xi4>) -> tensor<10x20xi8>
    %3 = "tosa.neg"(%2) : (tensor<10x20xi8>) -> tensor<10x20xi8>
    %4 = "tosa.cast"(%3) <{new_type = tensor<10x20xi4>}> : (tensor<10x20xi8>) -> tensor<10x20xi4>
    "func.return"(%4) : (tensor<10x20xi4>) -> ()
  }) : () -> ()
}) : () -> ()