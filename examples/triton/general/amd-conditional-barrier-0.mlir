"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "conditional_barrier"}> ({
    %0 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "rocdl.workitem.id.x"() : () -> i32
    %3 = "arith.divsi"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %5 = "arith.cmpi"(%3, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "amdgpu.cond_barrier"(%4) : (i1) -> ()
    %6 = "arith.addi"(%2, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "amdgpu.cond_barrier"(%5) : (i1) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.compute-capability" = 0 : i32, "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 64 : i32} : () -> ()

