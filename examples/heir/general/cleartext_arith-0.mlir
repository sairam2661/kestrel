"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "cleartext_arith"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "arith.remsi"(%arg0, %1) : (index, index) -> index
    %3 = "arith.cmpi"(%2, %0) <{predicate = 2 : i64}> : (index, index) -> i1
    %4 = "arith.addi"(%2, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %5 = "arith.select"(%3, %4, %2) : (i1, index, index) -> index
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
}) : () -> ()

