"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "scf_for_result_infer_dynamic_init"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "scf.for"(%0, %2, %1, %arg0) ({
    ^bb0(%arg1: index, %arg2: index):
      %5 = "test.some_use"() : () -> i1
      %6 = "scf.if"(%5) ({
        %7 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "scf.yield"(%7) : (index) -> ()
      }, {
        "scf.yield"(%arg2) : (index) -> ()
      }) : (i1) -> index
      "scf.yield"(%6) : (index) -> ()
    }) : (index, index, index, index) -> index
    %4 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "test.compare"(%3, %4) <{cmp = "LE"}> : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

