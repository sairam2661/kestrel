"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<5xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi1>
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg0, %2) <{predicate = 1 : i64}> : (tensor<5xi32>, i32) -> tensor<5xi1>
    %4 = "arith.addi"(%0, %2) : (tensor<5xi32>, i32) -> tensor<5xi32>
    "func.return"(%4) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()