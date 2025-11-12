"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.xori"(%2, %arg0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.cmpi"(%arg1, %arg0) <{predicate = 5 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<1xi1>
    %5 = "arith.select"(%4, %3, %arg0) : (tensor<1xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%5) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()