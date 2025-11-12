"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_mixin"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tensor.extract"(%arg0, %c0, %c0) <{index = [0, 0]}> : (tensor<2x2xi32>, index, index) -> i32
    %1 = "tensor.extract"(%arg1, %c0, %c1) <{index = [0, 1]}> : (tensor<2x2xi32>, index, index) -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "tensor.insert"(%2, %arg0, %c0, %c1) <{value = 0 : index}> : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%5) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_transforms"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "tensor.insert"(%0, %arg0, %c0, %c0) <{value = 0 : index}> : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "arith_test"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.addi"(%arg0, %c1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "main"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "func.call"(%arg0, %arg1) <{callee = @tensor_mixin}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "func.call"(%0) <{callee = @tensor_transforms}> : (tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "secret_test"}> ({
  ^bb0(%arg0: i32):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i32):
      %1 = "arith.addi"(%arg1, %c1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%1) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0" = 0 : index,
    "c1" = 1 : index,
    "i1" = 1 : i32
  }#attribute_dict
  = {
    "value" = #arith_overflownone,
    "index" = 0 : index,
    "c0