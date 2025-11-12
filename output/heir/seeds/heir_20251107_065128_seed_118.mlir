"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "tensor.empty"() <{shape = [4, 4], elementType = i32}> : () -> tensor<4x4xi32>
    "scf.for"(%arg2, %arg3) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%arg2: index, %arg3: index):
      "scf.for"(%arg4, %arg5) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
      ^bb2(%arg4: index, %arg5: index):
        %6 = "tensor.extract"(%arg0, %arg2, %arg4) : (tensor<4x4xi32>, index, index) -> i32
        %7 = "tensor.extract"(%arg1, %arg2, %arg4) : (tensor<4x4xi32>, index, index) -> i32
        %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "tensor.insert"(%8, %0, %arg2, %arg4) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      }) : (index, index) -> (index, index)
    }) : (index, index) -> (index, index)
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()