"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mixed_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "tensor_ext.rotate"(%4, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "arith.subi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %7 = "scf.for"(%0) <{upperBound = 4 : index}> ({
    ^bb1(%iv: index):
      %8 = "tensor.extract"(%6, %iv) : (tensor<4xi32>, index) -> i32
      %9 = "arith.muli"(%8, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %10 = "tensor.insert"(%9, %6, %iv) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()