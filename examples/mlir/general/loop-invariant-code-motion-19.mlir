"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> i32, sym_name = "hoist_variant_scf_if_failure"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 7 : index}> : () -> index
    %3 = "scf.for"(%arg0, %arg1, %arg2, %0) ({
    ^bb0(%arg3: index, %arg4: i32):
      %4 = "arith.cmpi"(%arg3, %2) <{predicate = 6 : i64}> : (index, index) -> i1
      %5 = "scf.if"(%4) ({
        %8 = "arith.addi"(%1, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }, {
        %7 = "ub.poison"() <{value = #ub.poison}> : () -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i1) -> i32
      %6 = "arith.addi"(%arg4, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

