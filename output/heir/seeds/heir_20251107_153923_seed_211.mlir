"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_mangle"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, %0) : (tensor<16xi32>, index) -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg1, %0) : (i32, tensor<16xi32>, index) -> tensor<16xi32>
    "func.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "multiply_and_select"}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.cmpi"(%1, %2, "slt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %arg4, %arg5) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<16xi32>, i32) -> tensor<16xi32>, sym_name = "tensor_adjust"}> ({
  ^bb0(%arg8: tensor<16xi32>, %arg9: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "func.call"(%arg8, %arg9) <{callee = @multiply_and_select}> : (tensor<16xi32>, i32) -> tensor<16xi32>
    "func.return"(%1) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()