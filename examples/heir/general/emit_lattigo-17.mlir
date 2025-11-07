"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "binops"}> ({
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %3 = "arith.remsi"(%0, %1) : (i64, i64) -> i64
    %4 = "arith.cmpi"(%0, %1) <{predicate = 5 : i64}> : (i64, i64) -> i1
    "func.return"(%4) : (i1) -> ()
  }) : () -> ()
}) {scheme.bgv} : () -> ()

