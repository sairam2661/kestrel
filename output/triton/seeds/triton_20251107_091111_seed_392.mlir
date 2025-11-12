"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttg_ptr), sym_name = "nested_allocs"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 256 : i32}> : () -> !ttg_ptr
      %1 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 512 : i32}> : () -> !ttg_ptr
      %2 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 1024 : i32}> : () -> !ttg_ptr
      %3 = "ttg.global_scratch_alloc"() <{alignment = 8 : i32, nbytes = 2048 : i32}> : () -> !ttg_ptr
      "tt.return"(%0, %1, %2, %3) : (!ttg_ptr, !ttg_ptr, !ttg_ptr, !ttg_ptr) -> ()
  }) : () -> (!ttg_ptr, !ttg_ptr, !ttg_ptr, !ttg_ptr)
  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "mixed_math"}> ({
    ^bb0(%arg0: i32):
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %3 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.subi"(%3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.muli"(%4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "arith.divi"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.return"(%6, %4) : (i32, i32) -> ()
  }) : () -> (i32, i32)
  "tt.func"() <{function_type = () -> (), sym_name = "nested_loops"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2:4 = "scf.for"(%0, %1, %0) ({
        ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
          %3:4 = "scf.for"(%0, %arg0, %0) ({
            ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32):
              "scf.yield"(%arg4, %arg5, %arg6, %arg7) : (i32, i32, i32, i32) -> ()
          }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32)
          "scf.yield"(%3#0, %3#1, %3#2, %3#3) : (i32, i32, i32, i32) -> ()
      }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32)
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()