"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt.ptr<f32>) -> (), sym_name = "arith_splat_bool"}> ({
  ^bb0(%arg0: !tt.ptr<f32>):
    %0 = "arith.constant"() <{value = dense<true> : tensor<128xi1>}> : () -> tensor<128xi1>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : () -> ()

