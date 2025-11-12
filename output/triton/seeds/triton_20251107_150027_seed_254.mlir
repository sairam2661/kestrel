"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "complex_reduce_example", sym_visibility = "public"}> ({
    %0 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32, step = 1 : i32}> : () -> i32
    %1 = "tt.global_scratch_alloc"() <{size = 16 : i32}> : () -> i32
    %2 = "scf.if"(%0) <{results = i32}> ({
      ^bb0(%arg0 : i32):
        %3 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> i32
    }) : (i32) -> i32
    %4 = "tt.reduce"() <{op = "add", identity = 0 : i32}> ({
      ^bb0(%arg0 : i32, %arg1 : i32):
        %5 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> i32
    }) : (i32) -> i32
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()