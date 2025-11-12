"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %1 = "scf.for"() <{lb = 0 : index, ub = 4 : index, step = 1 : index}> ({
    ^bb1(%i: index):
      %2 = "scf.for"() <{lb = 0 : index, ub = 4 : index, step = 1 : index}> ({
      ^bb2(%j: index):
        %3 = "scf.for"() <{lb = 0 : index, ub = 4 : index, step = 1 : index}> ({
        ^bb3(%k: index):
          %4 = "tensor.extract"(%arg0, %i, %k) : (tensor<4x4xi32>, index, index) -> i32
          %5 = "tensor.extract"(%arg1, %k, %j) : (tensor<4x4xi32>, index, index) -> i32
          %6 = "arith.muli"(%4, %5) <{overflowFlags = #arith_overflowFLAGS}> : (i32, i32) -> i32
          %7 = "tensor.extract"(%0, %i, %j) : (tensor<4x4xi32>, index, index) -> i32
          %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflowFLAGS}> : (i32, i32) -> i32
          %9 = "tensor.insert"(%8, %0, %i, %j) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
          scf.yield %9 : tensor<4x4xi32>
        }) : (tensor<4x4xi32>) -> (tensor<4x4xi32>)
        scf.yield : ()
      }) : () -> ()
      scf.yield : ()
    }) : () -> ()
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()