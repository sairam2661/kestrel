"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr_i32, !tt_ptr_i32, tensor<256xi32>) -> (), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: !tt_ptr_i32, %arg1: !tt_ptr_i32, %arg2: tensor<256xi32>):
      %0 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
      %1 = "arith.constant"() <{value = dense<42> : tensor<256xi32>}> : () -> tensor<256xi32>
      %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
      %3 = "tt.expand_dims"(%2) <{axis = 1 : i32}> : (tensor<256xi32>) -> tensor<256x1xi32>
      %4 = "tt.reduce"(%3) <{operation = "sum"}> : (tensor<256x1xi32>) -> tensor<1xi32>
      %5 = "tt.addptr"(%arg0, %arg1, %4) : (!tt_ptr_i32, !tt_ptr_i32, tensor<1xi32>) -> !tt_ptr_i32
      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()