"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_dialects_example"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %val0 = "tensor.extract"(%arg0, %c0) : (tensor<4xi32>, index) -> i32
    %val1 = "tensor.extract"(%arg0, %c1) : (tensor<4xi32>, index) -> i32
    %val2 = "tensor.extract"(%arg0, %c2) : (tensor<4xi32>, index) -> i32
    %val3 = "tensor.extract"(%arg0, %c3) : (tensor<4xi32>, index) -> i32
    %val4 = "tensor.extract"(%arg0, %c4) : (tensor<4xi32>, index) -> i32
    %val5 = "tensor.extract"(%arg0, %c5) : (tensor<4xi32>, index) -> i32
    %add0 = "arith.addi"(%val0, %val1) : (i32, i32) -> i32
    %sub0 = "arith.subi"(%val2, %val3) : (i32, i32) -> i32
    %mul0 = "arith.muli"(%val4, %val5) : (i32, i32) -> i32
    %select0 = "arith.select"(%add0, %sub0, %mul0) : (i32, i32, i32) -> i32
    %insert0 = "tensor.insert"(%select0, %arg1, %c0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%insert0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()