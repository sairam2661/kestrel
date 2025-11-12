"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "tensor_complex_op"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "tensor.extract_slice"(%arg0) <{offsets = [0], sizes = [32], strides = [1]}> : (tensor<64xi32>) -> tensor<32xi32>
    %3 = "tensor.extract_slice"(%arg0) <{offsets = [32], sizes = [32], strides = [1]}> : (tensor<64xi32>) -> tensor<32xi32>
    %4 = "tensor.extract_slice"(%arg1) <{offsets = [0], sizes = [32], strides = [1]}> : (tensor<64xi32>) -> tensor<32xi32>
    %5 = "tensor.extract_slice"(%arg1) <{offsets = [32], sizes = [32], strides = [1]}> : (tensor<64xi32>) -> tensor<32xi32>
    %6 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %7 = "arith.addi"(%3, %5) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %8 = "tensor.insert_slice"(%6, %arg0) <{dest_indices = [0]}> : (tensor<32xi32>, tensor<64xi32>) -> tensor<64xi32>
    %9 = "tensor.insert_slice"(%7, %8) <{dest_indices = [32]}> : (tensor<32xi32>, tensor<64xi32>) -> tensor<64xi32>
    "func.return"(%9) : (tensor<64xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "incr"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "mul_and_add"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "mixed_ops"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "func.call"() <{callee = @incr}> : (i32) -> i32
    %3 = "func.call"() <{callee = @mul_and_add, arguments = [10, 20]}> : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()