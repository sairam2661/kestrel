"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi16>, tensor<16xi16>, tensor<16xi16>, tensor<16xi16>) -> tensor<16xi16>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<16xi16>, %arg1: tensor<16xi16>, %arg2: tensor<16xi16>, %arg3: tensor<16xi16>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<16xi16>, index) -> tensor<16xi16>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<16xi16>, index) -> tensor<16xi16>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi16>, tensor<16xi16>) -> tensor<16xi16>
    %5 = "tensor_ext.rotate"(%arg2, %0) : (tensor<16xi16>, index) -> tensor<16xi16>
    %6 = "tensor_ext.rotate"(%arg3, %1) : (tensor<16xi16>, index) -> tensor<16xi16>
    %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi16>, tensor<16xi16>) -> tensor<16xi16>
    %8 = "arith.addi"(%4, %7) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi16>, tensor<16xi16>) -> tensor<16xi16>
    "func.return"(%8) : (tensor<16xi16>) -> ()
  }) : () -> ()
}) : () -> ()