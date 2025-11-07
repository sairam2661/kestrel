"builtin.module"() ({
  "tt.func"() <{function_type = (!tt.ptr<bf16>, !tt.ptr<bf16>, tensor<256xi32>) -> (), sym_name = "histo_nonneg"}> ({
  ^bb0(%arg0: !tt.ptr<bf16>, %arg1: !tt.ptr<bf16>, %arg2: tensor<256xi32>):
    %0 = "tt.histogram"(%arg2) : (tensor<256xi32>) -> tensor<8xi32>
    %1 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()

