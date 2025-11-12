"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>) -> tensor<4xi32>, sym_name = "tensor_transform"}> ({
  ^bb0(%arg0: tensor<4xi16>):
    %c0_i16 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %c1_i16 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %c2_i16 = "arith.constant"() <{value = 2 : i16}> : () -> i16
    %c3_i16 = "arith.constant"() <{value = 3 : i16}> : () -> i16
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32

    %extract0 = "tensor.extract"(%arg0, %c0_i16) : (tensor<4xi16>, i16) -> i16
    %extract1 = "tensor.extract"(%arg0, %c1_i16) : (tensor<4xi16>, i16) -> i16
    %extract2 = "tensor.extract"(%arg0, %c2_i16) : (tensor<4xi16>, i16) -> i16
    %extract3 = "tensor.extract"(%arg0, %c3_i16) : (tensor<4xi16>, i16) -> i16

    %cast0 = "arith.extsi"(%extract0) : (i16) -> i32
    %cast1 = "arith.extsi"(%extract1) : (i16) -> i32
    %cast2 = "arith.extsi"(%extract2) : (i16) -> i32
    %cast3 = "arith.extsi"(%extract3) : (i16) -> i32

    %tensor1 = "tensor.insert"(%cast0, %arg0, %c0_i16) : (i32, tensor<4xi16>, i16) -> tensor<4xi16>
    %tensor2 = "tensor.insert"(%cast1, %tensor1, %c1_i16) : (i32, tensor<4xi16>, i16) -> tensor<4xi16>
    %tensor3 = "tensor.insert"(%cast2, %tensor2, %c2_i16) : (i32, tensor<4xi16>, i16) -> tensor<4xi16>
    %tensor4 = "tensor.insert"(%cast3, %tensor3, %c3_i16) : (i32, tensor<4xi16>, i16) -> tensor<4xi16>

    %result = "tensor.cast"(%tensor4) : (tensor<4xi16>) -> tensor<4xi32>
    "func.return"(%result) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()