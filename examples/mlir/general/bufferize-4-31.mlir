"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xf32>) -> tensor<2x2x5xf32>, sym_name = "tensor.reshape"}> ({
  ^bb0(%arg0: tensor<?x10xf32>):
    %0 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 5 : i64}> : () -> i64
    %2 = "tensor.from_elements"(%0, %0, %1) : (i64, i64, i64) -> tensor<3xi64>
    %3 = "tensor.reshape"(%arg0, %2) : (tensor<?x10xf32>, tensor<3xi64>) -> tensor<2x2x5xf32>
    "func.return"(%3) : (tensor<2x2x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

