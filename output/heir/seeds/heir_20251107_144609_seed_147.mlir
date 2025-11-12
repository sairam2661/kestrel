"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, index) -> tensor<4xi32>, sym_name = "tensor_add_with_index"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
    %2 = "tensor.extract"(%arg0, %arg2) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %arg2) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %arg2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "scf.if"(%arg2) <{results = 1 : i32}> ({
    ^bb0(%arg3: i32):
      %6 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()