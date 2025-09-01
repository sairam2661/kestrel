"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "basic_program_id"}> ({
    %0 = "tt.get_program_id"() <{axis = 0 : i32}> : () -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"triton_gpu.num-ctas" = 1 : i32, "triton_gpu.num-warps" = 4 : i32} : () -> ()

