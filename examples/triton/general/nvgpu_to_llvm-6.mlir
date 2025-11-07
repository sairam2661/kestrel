"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "one_warp"}> ({
    %0 = "nvgpu.warp_id"() : () -> i32
    "tt.return"(%0) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()

