"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi64>) -> tensor<10xi64>, sym_name = "tensor_secret_rotated"}> ({
  ^bb0(%arg0: tensor<10xi64>):
    %0 = "tensor.extract"(%arg0) <{index = 3}> : (tensor<10xi64>) -> i64
    %1 = "arith.constant"() <{value = 5 : i64}> : () -> i64
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow}> : (i64, i64) -> i64
    %3 = "tensor.insert"(%2, %arg0) <{index = 3}> : (i64, tensor<10xi64>) -> tensor<10xi64>
    %4 = "tensor_ext.rotate"(%3) <{offset = 2, steps = 3}> : (tensor<10xi64>) -> tensor<10xi64>
    "func.return"(%4) : (tensor<10xi64>) -> ()
  }) : () -> ()
}) : () -> ()