"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, index, index) -> i32, sym_name = "tensor_sum_unroll"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "scf.for"(%arg1, %arg2, %1, %0) ({
    ^bb0(%arg3: index, %arg4: i32):
      %5 = "tensor.extract"(%arg0, %arg3) : (tensor<4xi8>, index) -> i8
      %6 = "arith.extui"(%5) : (i8) -> i32
      %7 = "arith.addi"(%arg4, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()