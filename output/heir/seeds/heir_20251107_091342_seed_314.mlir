"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "vector_math"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "func.call"(%arg0, %arg1) <{callee = @elementwise_add}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %1 = "func.call"(%0, %arg0) <{callee = @elementwise_mul}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%1) : (tensor<10xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "elementwise_add"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %1 = "tensor.extract"(%arg0, %iv) : (tensor<10xi32>, index) -> i32
      %2 = "tensor.extract"(%arg1, %iv) : (tensor<10xi32>, index) -> i32
      %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "tensor.insert"(%3, %arg0, %iv) <{inbounds = true}> : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      "scf.yield"(%4) : (tensor<10xi32>) -> ()
    }) : (tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%0) : (tensor<10xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "elementwise_mul"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %1 = "tensor.extract"(%arg0, %iv) : (tensor<10xi32>, index) -> i32
      %2 = "tensor.extract"(%arg1, %iv) : (tensor<10xi32>, index) -> i32
      %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "tensor.insert"(%3, %arg0, %iv) <{inbounds = true}> : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      "scf.yield"(%4) : (tensor<10xi32>) -> ()
    }) : (tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%0) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()