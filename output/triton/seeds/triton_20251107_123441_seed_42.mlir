"builtin.module"() ({
  "tt.func"() <{function_type = (!ttPtrbf16, !ttPtrbf16, tensor<256xi32>) -> (), sym_name = "unique_histogram"}> ({
  ^bb0(%arg0: !ttPtrbf16, %arg1: !ttPtrbf16, %arg2: tensor<256xi32>):
    %0 = "tt.histogram"(%arg2) : (tensor<256xi32>) -> tensor<8xi32>
    %1 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %2 = "arith.cmpi"(%0, %1, "eq") : (tensor<8xi32>, tensor<8xi32>, i32) -> tensor<8xi1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()