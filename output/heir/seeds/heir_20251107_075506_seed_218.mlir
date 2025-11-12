"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %cst0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %cst1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %cst2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %cst3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %cst4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %cst5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %cst6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %cst7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %sub = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_attrs}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %rot1 = "tensor_ext.rotate"(%sub, %cst1) : (tensor<16xi32>, index) -> tensor<16xi32>
    %rot2 = "tensor_ext.rotate"(%rot1, %cst2) : (tensor<16xi32>, index) -> tensor<16xi32>
    %add1 = "arith.addi"(%rot2, %arg0) <{overflowFlags = #arith_overflow_attrs}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %rot3 = "tensor_ext.rotate"(%add1, %cst3) : (tensor<16xi32>, index) -> tensor<16xi32>
    %add2 = "arith.addi"(%rot3, %arg1) <{overflowFlags = #arith_overflow_attrs}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %rot4 = "tensor_ext.rotate"(%add2, %cst4) : (tensor<16xi32>, index) -> tensor<16xi32>
    %add3 = "arith.addi"(%rot4, %sub) <{overflowFlags = #arith_overflow_attrs}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %rot5 = "tensor_ext.rotate"(%add3, %cst5) : (tensor<16xi32>, index) -> tensor<16xi32>
    %add4 = "arith.addi"(%rot5, %add1) <{overflowFlags = #arith_overflow_attrs}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %rot6 = "tensor_ext.rotate"(%add4, %cst6) : (tensor<16xi32>, index) -> tensor<16xi32>
    %add5 = "arith.addi"(%rot6, %add2) <{overflowFlags = #arith_overflow_attrs}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %rot7 = "tensor_ext.rotate"(%add5, %cst7) : (tensor<16xi32>, index) -> tensor<16xi32>
    %add6 = "arith.addi"(%rot7, %add3) <{overflowFlags = #arith_overflow_attrs}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%add6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()