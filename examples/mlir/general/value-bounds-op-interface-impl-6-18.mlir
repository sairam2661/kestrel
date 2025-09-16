"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "scf_for_result_infer_dynamic_init_big_step"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 10 : index}> : () -> index
    %6 = "scf.for"(%0, %5, %2, %arg0) ({
    ^bb0(%arg1: index, %arg2: index):
      %9 = "test.some_use"() : () -> i1
      %10 = "scf.if"(%9) ({
        %11 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "scf.yield"(%11) : (index) -> ()
      }, {
        "scf.yield"(%arg2) : (index) -> ()
      }) : (i1) -> index
      "scf.yield"(%10) : (index) -> ()
    }) : (index, index, index, index) -> index
    %7 = "arith.addi"(%arg0, %4) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %8 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "test.compare"(%6, %7) <{cmp = "LE"}> : (index, index) -> ()
    "test.compare"(%6, %8) <{cmp = "LE"}> : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

