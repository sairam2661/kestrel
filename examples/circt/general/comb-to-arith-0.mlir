"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32, input arg2 : i32, input arg3 : i32, input arg4 : i1>, parameters = [], sym_name = "test"}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i1):
    %3 = "hw.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "comb.divs"(%arg6, %arg7) : (i32, i32) -> i32
    %5 = "comb.divu"(%arg6, %arg7) : (i32, i32) -> i32
    %6 = "comb.mods"(%arg6, %arg7) : (i32, i32) -> i32
    %7 = "comb.modu"(%arg6, %arg7) : (i32, i32) -> i32
    %8 = "comb.sub"(%arg6, %arg7) : (i32, i32) -> i32
    %9 = "comb.add"(%arg6, %arg7, %arg8, %arg9) : (i32, i32, i32, i32) -> i32
    %10 = "comb.mul"(%arg6, %arg7, %arg8, %arg9) : (i32, i32, i32, i32) -> i32
    %11 = "comb.and"(%arg6, %arg7, %arg8, %arg9) : (i32, i32, i32, i32) -> i32
    %12 = "comb.or"(%arg6, %arg7, %arg8, %arg9) : (i32, i32, i32, i32) -> i32
    %13 = "comb.xor"(%arg6, %arg7, %arg8, %arg9) : (i32, i32, i32, i32) -> i32
    %14 = "comb.mux"(%arg10, %arg6, %arg7) : (i1, i32, i32) -> i32
    %15 = "comb.icmp"(%arg6, %arg7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %16 = "comb.icmp"(%arg6, %arg7) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %17 = "comb.icmp"(%arg6, %arg7) <{predicate = 10 : i64}> : (i32, i32) -> i1
    %18 = "comb.icmp"(%arg6, %arg7) <{predicate = 11 : i64}> : (i32, i32) -> i1
    %19 = "comb.icmp"(%arg6, %arg7) <{predicate = 12 : i64}> : (i32, i32) -> i1
    %20 = "comb.icmp"(%arg6, %arg7) <{predicate = 13 : i64}> : (i32, i32) -> i1
    %21 = "comb.icmp"(%arg6, %arg7) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %22 = "comb.icmp"(%arg6, %arg7) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %23 = "comb.icmp"(%arg6, %arg7) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %24 = "comb.icmp"(%arg6, %arg7) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %25 = "comb.icmp"(%arg6, %arg7) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %26 = "comb.icmp"(%arg6, %arg7) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %27 = "comb.icmp"(%arg6, %arg7) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %28 = "comb.icmp"(%arg6, %arg7) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %29 = "comb.extract"(%arg6) <{lowBit = 5 : i32}> : (i32) -> i16
    %30 = "comb.concat"(%arg6, %arg7) : (i32, i32) -> i64
    %31 = "comb.replicate"(%arg10) : (i1) -> i32
    %32 = "comb.replicate"(%arg6) : (i32) -> i64
    %33 = "scf.execute_region"() ({
      %34 = "comb.concat"(%arg6) : (i32) -> i32
      "scf.yield"(%34) : (i32) -> ()
    }) : () -> i32
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32>, parameters = [], sym_name = "shlTest"}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %2 = "comb.shl"(%arg4, %arg5) : (i32, i32) -> i32
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32>, parameters = [], sym_name = "shruTest"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %1 = "comb.shru"(%arg2, %arg3) : (i32, i32) -> i32
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32>, parameters = [], sym_name = "shrsTest"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "comb.shrs"(%arg0, %arg1) : (i32, i32) -> i32
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

