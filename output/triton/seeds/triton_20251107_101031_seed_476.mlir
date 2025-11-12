"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "nested_scratch_alloc", sym_visibility = "public"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 256 : i32}> : () -> !ttg_global_ptr
      "scf.for"() <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
        ^bb1(%i: i32):
          %1 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttg_global_ptr
          "scf.if"(%i) ({
            ^bb2:
              %2 = "arith.index_cast"(%i) : (i32) -> index
              %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
              %4 = "arith.addi"(%3, %2) : (i32, index) -> i32
              "tt.return"(%4) : (i32) -> ()
          }) {
            "scf.yield" 	= () -> ()
          }
          : (i1) -> ()
          "scf.yield" 	()
      : (i32) -> ()
      }) : (i32) -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32, "ttg.target" = "cuda:110"} : () -> ()