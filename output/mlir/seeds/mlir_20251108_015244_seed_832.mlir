"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i1, sym_name = "edge_case_function"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%arg0, %0) : (index, index) -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "arith.cmpi"(%1, %2) <{predicate = 4 : i64}> : (index, index) -> i1
    "scf.if"(%3) ({
  ^bb1:
      %4 = "arith.constant"() <{value = 42 : index}> : () -> index
      "scf.yield"() : () -> ()
    }) {
  } : (index) -> ()
    "func.return"(%3) : (i1) -> ()
  }) : (index) -> (i1)
}) : () -> ()