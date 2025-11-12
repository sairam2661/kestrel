"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi64>) -> tensor<4xi32>, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi64>):
    %0 = "arith.constant"() <{value = dense<123> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.constant"() <{value = dense<456> : tensor<4xi64>}> : () -> tensor<4xi64>
    %3 = "arith.addi"(%arg1, %2) : (tensor<4xi64>, tensor<4xi64>) -> tensor<4xi64>
    %4 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "scf.for"(%4) <{lowerBound = 0 : i64, upperBound = 4 : i64, step = 1 : i64}> ({
      ^bb1(%iv: i64):
        %6 = "arith.extui"(%iv) : (i64) -> i32
        %7 = "arith.addi"(%6, %6) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) : (i64) -> ()
    "func.return"(%1) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()