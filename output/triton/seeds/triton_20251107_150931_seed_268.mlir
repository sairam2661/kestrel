"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.constancy = 2 : i32, tt.contiguity = 1 : i32, tt.divisibility = 3 : i32}], function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "compound_operation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "arith.muli"(%0, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %4 = "arith.select"(%3, %2, %arg0) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%4) : (tensor<4xi32>) -> ()
  }) : (tensor<4xi32>) -> tensor<4xi32>
}) : () -> ()