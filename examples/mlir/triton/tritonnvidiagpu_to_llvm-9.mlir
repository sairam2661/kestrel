"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt.ptr<i8>) -> (), sym_name = "tensormap_fenceproxy_acquire", sym_visibility = "public"}> ({
  ^bb0(%arg0: !tt.ptr<i8>):
    "ttng.tensormap_fenceproxy_acquire"(%arg0) : (!tt.ptr<i8>) -> ()
    "tt.return"() : () -> ()
  }) {noinline = false} : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()

