"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>, tensor<4xi16>) -> i16, sym_name = "rotate_not_applied_because_multiple_tensors"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: tensor<4xi16>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
    %3 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %4 = "tensor_ext.rotate"(%2, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %6 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %7 = "tensor_ext.rotate"(%4, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %9 = "tensor.extract"(%8, %0) : (tensor<4xi16>, index) -> i16
    "func.return"(%9) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

