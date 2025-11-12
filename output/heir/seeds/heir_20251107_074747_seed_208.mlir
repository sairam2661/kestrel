"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "elementwise_mod"}> ({
  ^bb0(%arg0: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<13 : i32> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.cmpi"(%arg0, %0, "eq") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %2 = "arith.select"(%1, %0, %arg0) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%2) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "elementwise_square"}> ({
  ^bb0(%arg0: tensor<16xi32>):
    %0 = "arith.muli"(%arg0, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%0) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "process_data"}> ({
  ^bb0(%arg0: tensor<16xi32>):
    %0 = "func.call"(%arg0) <{callee = @elementwise_mod}> : (tensor<16xi32>) -> tensor<16xi32>
    %1 = "func.call"(%0) <{callee = @elementwise_square}> : (tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%1) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()