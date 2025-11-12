"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_negate"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "arith.subi"(%arg0, %arg0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_increment"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_decrement"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.subi"(%arg0, %0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>, sym_name = "tensor_cmp"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.cmpf"(%arg0, %arg1) <{predicate = "eq"}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>
    "func.return"(%0) : (tensor<2x2xi1>) -> ()
  }) : () -> ()
}) : () -> ()