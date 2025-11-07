"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.nv_tma_desc = 1 : i32}], function_type = (!tt.ptr<i8, 0>) -> (), sym_name = "byval_tma_desc"}> ({
  ^bb0(%arg0: !tt.ptr<i8, 0>):
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 1 : i32} : () -> ()

