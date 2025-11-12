"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> i32, sym_name = "tensor_select_sum"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "arith.constant"() <{value = 2 : index}> : () -> index
      %3 = "arith.constant"() <{value = 3 : index}> : () -> index
      %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
      %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
      %7 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
      %8 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
      %9 = "arith.cmpi"(%5, %6, "slt") : (i32, i32) -> i1
      %10 = "arith.select"(%9, %5, %6) : (i1, i32, i32) -> i32
      %11 = "arith.cmpi"(%7, %8, "slt") : (i32, i32) -> i1
      %12 = "arith.select"(%11, %7, %8) : (i1, i32, i32) -> i32
      %13 = "arith.addi"(%4, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %14 = "arith.addi"(%13, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %15 = "arith.addi"(%14, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "func.return"(%15) : (i32) -> ()
  }) : () -> ()
}) : () -> ()