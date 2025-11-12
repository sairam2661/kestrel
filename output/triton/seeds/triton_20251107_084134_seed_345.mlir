"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.muli"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.remsi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %5 = "arith.select"(%arg0, %arg1, %4) : (tensor<4xi32>, tensor<4xi32>, tensor<4xi1>) -> tensor<4xi32>
    "tt.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()