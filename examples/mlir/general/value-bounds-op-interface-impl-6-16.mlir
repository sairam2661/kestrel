"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "scf_for_result_infer"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "scf.for"(%0, %2, %1, %0) ({
    ^bb0(%arg0: index, %arg1: index):
      %4 = "test.some_use"() : () -> i1
      %5 = "scf.if"(%4) ({
        %6 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "scf.yield"(%6) : (index) -> ()
      }, {
        "scf.yield"(%arg1) : (index) -> ()
      }) : (i1) -> index
      "scf.yield"(%5) : (index) -> ()
    }) : (index, index, index, index) -> index
    "test.compare"(%3, %2) <{cmp = "LE"}> : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

