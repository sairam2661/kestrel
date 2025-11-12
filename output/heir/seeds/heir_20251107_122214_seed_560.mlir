"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, index) -> i32, sym_name = "reduce_sum"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 16 : index}> : () -> index
    %3 = "scf.for"(%arg1, %0, %1, %0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "tensor.extract"(%arg0, %arg2) : (tensor<16xi32>, index) -> i32
      %5 = "arith.addi"(%4, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) {lower = 0 : i64, upper = 16 : i64} : (index, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()