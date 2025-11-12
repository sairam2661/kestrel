"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr_tensor, !ttg_ptr_tensor) -> (), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: !ttg_ptr_tensor, %arg1: !ttg_ptr_tensor):
      %0 = "tt.addptr"(%arg0, %arg1) : (!ttg_ptr_tensor, !ttg_ptr_tensor) -> !ttg_ptr_tensor
      %1 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %2 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
      %3 = "tt.reduce"(%2) <{reduction = "sum"}> ({
        %4 = "arith.addi"(%2, %2) <{overflowFlags = #arith_overflow_none}> : (tensor<64x1xi32>, tensor<64x1xi32>) -> tensor<64x1xi32>
        "tt.yield"(%4) : (tensor<64x1xi32>) -> ()
      }) : (tensor<64x1xi32>) -> tensor<64xi32>
      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()