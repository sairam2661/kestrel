"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %c0_i8 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %c1_i8 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %c2_i8 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %c3_i8 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %c0_index = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1_index = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2_index = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3_index = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4_index = "arith.constant"() <{value = 4 : index}> : () -> index
    %extract0 = "tensor.extract"(%arg0, %c0_index) : (tensor<4xi8>, index) -> i8
    %extract1 = "tensor.extract"(%arg0, %c1_index) : (tensor<4xi8>, index) -> i8
    %extract2 = "tensor.extract"(%arg0, %c2_index) : (tensor<4xi8>, index) -> i8
    %extract3 = "tensor.extract"(%arg0, %c3_index) : (tensor<4xi8>, index) -> i8
    %add0 = "arith.addi"(%extract0, %extract1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %add1 = "arith.addi"(%extract2, %extract3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %and0 = "arith.andi"(%add0, %add1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %insert0 = "tensor.insert"(%and0, %arg0, %c0_index) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%insert0) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()