"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "multi_rotations_and_additions"}> ({
    ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
      %0 = "arith.constant"() <{value = 1 : index}> : () -> index
      %1 = "arith.constant"() <{value = 2 : index}> : () -> index
      %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi8>, index) -> tensor<4xi8>
      %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<4xi8>, index) -> tensor<4xi8>
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
      %5 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
        ^bb1(%iv: index):
          %6 = "tensor.extract"(%4, %iv) : (tensor<4xi8>, index) -> i8
          %7 = "arith.constant"() <{value = 5 : i8}> : () -> i8
          %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
          %9 = "tensor.insert"(%8, %4, %iv) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
          "scf.yield"(%9) : (tensor<4xi8>) -> ()
      }) : (tensor<4xi8>)
      "func.return"(%5) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()