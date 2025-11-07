"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "basic_program_id"}> ({
    %0 = "tt.get_program_id"() <{axis = 0 : i32}> : () -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()

