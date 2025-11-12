"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, i8) -> tensor<16xi8>, sym_name = "tensor_rotation_with_conditional_addition"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: i8):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 6 : index}> : () -> index
    %6 = "arith.constant"() <{value = 7 : index}> : () -> index
    %7 = "arith.constant"() <{value = 8 : index}> : () -> index
    %8 = "tensor_ext.rotate"(%arg0, %2) : (tensor<16xi8>, index) -> tensor<16xi8>
    %9 = "tensor_ext.rotate"(%8, %3) : (tensor<16xi8>, index) -> tensor<16xi8>
    %10 = "arith.cmpi"(%arg1, %5, "eq") : (i8, i8) -> i1
    %11 = "scf.if"(%10) ({
      %12 = "arith.addi"(%arg0, %9) <{overflowFlags = #arith_overflownone}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
      "scf.yield"(%12) : (tensor<16xi8>) -> ()
    }, {
      "scf.yield"(%arg0) : (tensor<16xi8>) -> ()
    }) : (i1) -> tensor<16xi8>
    "func.return"(%11) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()