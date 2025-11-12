"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgpointer) -> i32, sym_name = "process_data"}> ({
    ^bb0(%arg0: !ttgpointer):
      %0 = "arith.constant"() <{value = dense<1> : tensor<256xi32>}> : () -> tensor<256xi32>
      %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<256xi32>) -> tensor<256x1xi32>
      %2 = "tt.call"(%arg0, %1) <{func = @process_tensor}> : (!ttgpointer, tensor<256x1xi32>) -> tensor<256x1xi32>
      %3 = "tt.addptr"(%arg0, %2) <{offset = 1024 : i32}> : (!ttgpointer, tensor<256x1xi32>) -> !ttgpointer
      %4 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_modes}> : (tensor<256xi32>, tensor<256x1xi32>) -> tensor<256xi32>
      %5 = "tt.reduce"(%4, "add") : (tensor<256xi32>) -> i32
      "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<256x1xi32>) -> tensor<256x1xi32>, sym_name = "process_tensor"}> ({
    ^bb0(%arg1: tensor<256x1xi32>):
      %6 = "arith.constant"() <{value = dense<2> : tensor<256xi32>}> : () -> tensor<256xi32>
      %7 = "arith.subi"(%arg1, %6) <{overflowFlags = #arith_overflow_modes}> : (tensor<256x1xi32>, tensor<256xi32>) -> tensor<256x1xi32>
      "tt.return"(%7) : (tensor<256x1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 2 : i32} : () -> ()