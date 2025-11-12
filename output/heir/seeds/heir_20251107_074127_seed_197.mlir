"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>, i8) -> tensor<8xi8>, sym_name = "tensor_rotate_and_select"}> ({
  ^bb0(%arg0: tensor<8xi8>, %arg1: i8):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi8>, index) -> tensor<8xi8>
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor_ext.rotate"(%1, %2) : (tensor<8xi8>, index) -> tensor<8xi8>
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    %5 = "tensor_ext.rotate"(%3, %4) : (tensor<8xi8>, index) -> tensor<8xi8>
    %6 = "arith.constant"() <{value = 0 : index}> : () -> index
    %7 = "tensor.extract"(%5, %6) : (tensor<8xi8>, index) -> i8
    %8 = "arith.cmpi"(%7, %arg1, "eq") : (i8, i8) -> i1
    %9 = "scf.if"(%8) ({
      %10 = "arith.addi"(%7, %arg1) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8
      %11 = "tensor.insert"(%10, %5, %6) : (i8, tensor<8xi8>, index) -> tensor<8xi8>
      "scf.yield"(%11) : (tensor<8xi8>) -> ()
    }, {
      %12 = "arith.subi"(%7, %arg1) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8
      %13 = "tensor.insert"(%12, %5, %6) : (i8, tensor<8xi8>, index) -> tensor<8xi8>
      "scf.yield"(%13) : (tensor<8xi8>) -> ()
    }) : (i1) -> tensor<8xi8>
    "func.return"(%9) : (tensor<8xi8>) -> ()
  }) : () -> ()
}) : () -> ()