"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_ops"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "tensor.extract"(%arg0, %c0) : (tensor<4xi8>, index) -> i8
    %1 = "tensor.extract"(%arg1, %c0) : (tensor<4xi8>, index) -> i8
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %3 = "tensor.insert"(%2, %arg0, %c0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %4 = "scf.for"(%c0) <{lowerBound = 1 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index, %arg2: tensor<4xi8>):
      %5 = "tensor.extract"(%arg0, %iv) : (tensor<4xi8>, index) -> i8
      %6 = "tensor.extract"(%arg1, %iv) : (tensor<4xi8>, index) -> i8
      %7 = "arith.muli"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
      %8 = "tensor.insert"(%7, %arg2, %iv) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
      "scf.yield"(%8) : (tensor<4xi8>) -> ()
    }) {valueInits = [#tensor_ext_assign_layout]} : (index, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%4) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()