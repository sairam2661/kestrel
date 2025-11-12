"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi8>, i32) -> tensor<10xi8>, sym_name = "tensor_shuffle"}> ({
  ^bb0(%arg0: tensor<10xi8>, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %c8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %c9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %c10 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %extract0 = "tensor.extract"(%arg0, %c0) : (tensor<10xi8>, index) -> i8
    %extract1 = "tensor.extract"(%arg0, %c1) : (tensor<10xi8>, index) -> i8
    %extract2 = "tensor.extract"(%arg0, %c2) : (tensor<10xi8>, index) -> i8
    %extract3 = "tensor.extract"(%arg0, %c3) : (tensor<10xi8>, index) -> i8
    %extract4 = "tensor.extract"(%arg0, %c4) : (tensor<10xi8>, index) -> i8
    %extract5 = "tensor.extract"(%arg0, %c5) : (tensor<10xi8>, index) -> i8
    %extract6 = "tensor.extract"(%arg0, %c6) : (tensor<10xi8>, index) -> i8
    %extract7 = "tensor.extract"(%arg0, %c7) : (tensor<10xi8>, index) -> i8
    %extract8 = "tensor.extract"(%arg0, %c8) : (tensor<10xi8>, index) -> i8
    %extract9 = "tensor.extract"(%arg0, %c9) : (tensor<10xi8>, index) -> i8
    %shuffle0 = "arith.addi"(%extract0, %arg1) : (i8, i32) -> i8
    %shuffle1 = "arith.addi"(%extract1, %arg1) : (i8, i32) -> i8
    %shuffle2 = "arith.addi"(%extract2, %arg1) : (i8, i32) -> i8
    %shuffle3 = "arith.addi"(%extract3, %arg1) : (i8, i32) -> i8
    %shuffle4 = "arith.addi"(%extract4, %arg1) : (i8, i32) -> i8
    %shuffle5 = "arith.addi"(%extract5, %arg1) : (i8, i32) -> i8
    %shuffle6 = "arith.addi"(%extract6, %arg1) : (i8, i32) -> i8
    %shuffle7 = "arith.addi"(%extract7, %arg1) : (i8, i32) -> i8
    %shuffle8 = "arith.addi"(%extract8, %arg1) : (i8, i32) -> i8
    %shuffle9 = "arith.addi"(%extract9, %arg1) : (i8, i32) -> i8
    %insert0 = "tensor.insert"(%shuffle0, %arg0, %c0) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %insert1 = "tensor.insert"(%shuffle1, %insert0, %c1) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %insert2 = "tensor.insert"(%shuffle2, %insert1, %c2) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %insert3 = "tensor.insert"(%shuffle3, %insert2, %c3) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %insert4 = "tensor.insert"(%shuffle4, %insert3, %c4) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %insert5 = "tensor.insert"(%shuffle5, %insert4, %c5) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %insert6 = "tensor.insert"(%shuffle6, %insert5, %c6) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %insert7 = "tensor.insert"(%shuffle7, %insert6, %c7) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %insert8 = "tensor.insert"(%shuffle8, %insert7, %c8) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    %result = "tensor.insert"(%shuffle9, %insert8, %c9) : (i8, tensor<10xi8>, index) -> tensor<10xi8>
    "func.return"(%result) : (tensor<10xi8>) -> ()
  }) : () -> ()
}) : () -> ()