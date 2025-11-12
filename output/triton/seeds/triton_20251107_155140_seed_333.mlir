"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_select_mixed"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %1 = "arith.constant"() <{value = dense<1> : tensor<8xi32>}> : () -> tensor<8xi32>
    %2 = "arith.cmpi"(%arg0, %1) <{predicate = 4 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %3 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %4 = "arith.cmpi"(%arg0, %3) <{predicate = 4 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %5 = "arith.select"(%2, %arg0, %arg1) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.select"(%4, %arg1, %5) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_select_reverse"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %1 = "arith.constant"() <{value = dense<3> : tensor<8xi32>}> : () -> tensor<8xi32>
    %2 = "arith.cmpi"(%arg0, %1) <{predicate = 5 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %3 = "arith.constant"() <{value = dense<4> : tensor<8xi32>}> : () -> tensor<8xi32>
    %4 = "arith.cmpi"(%arg0, %3) <{predicate = 5 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %5 = "arith.select"(%2, %arg1, %arg0) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.select"(%4, %arg0, %5) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> (tensor<8xi32>, tensor<8xi32>), sym_name = "select_and_split"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %1 = "arith.constant"() <{value = dense<5> : tensor<8xi32>}> : () -> tensor<8xi32>
    %2 = "arith.cmpi"(%arg0, %1) <{predicate = 2 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %3 = "arith.constant"() <{value = dense<6> : tensor<8xi32>}> : () -> tensor<8xi32>
    %4 = "arith.cmpi"(%arg0, %3) <{predicate = 2 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %5 = "arith.select"(%2, %arg0, %arg1) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.select"(%4, %arg1, %arg0) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%5, %6) : (tensor<8xi32>, tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()