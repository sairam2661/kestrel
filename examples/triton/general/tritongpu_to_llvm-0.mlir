"builtin.module"() ({
  "tt.func"() <{function_type = (index, !tt.ptr<f16>) -> (), sym_name = "test_empty_kernel"}> ({
  ^bb0(%arg0: index, %arg1: !tt.ptr<f16>):
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()

