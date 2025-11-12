"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index) -> i32, sym_name = "tensor_sum_with_index_rot"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg0, %arg1) <{dims = [0]}> : (tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "scf.for"(%arg1, %0) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb0(%i: index, %acc: i32):
      %3 = "tensor.extract"(%1, %i) : (tensor<4xi32>, index) -> i32
      %4 = "arith.addi"(%acc, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%i, %4) : (index, i32) -> (index, i32)
    }) : (index, i32) -> i32
    %5 = "scf.for"(%arg1, %0) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb0(%i: index, %acc: i32):
      %3 = "tensor.extract"(%1, %i) : (tensor<4xi32>, index) -> i32
      %4 = "arith.addi"(%acc, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%i, %4) : (index, i32) -> (index, i32)
    }) : (index, i32) -> i32
    "func.return"(%5#1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()