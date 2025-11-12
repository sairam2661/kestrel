"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "tensor.extract"(%arg0, 0) : (tensor<4xi32>, index) -> i32
    %1 = "tensor.extract"(%arg1, 1) : (tensor<4xi32>, index) -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "tensor.extract"(%arg0, 2) : (tensor<4xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, 3) : (tensor<4xi32>, index) -> i32
    %5 = "arith.subi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.muli"(%2, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.cmpi"(%6, 0, "slt") : (i32, i32) -> i1
    %8 = "arith.select"(%7, 100, 0) : (i1, i32, i32) -> i32
    %9 = "arith.addi"(%0, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "tensor.insert"(%9, %arg0, 0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()