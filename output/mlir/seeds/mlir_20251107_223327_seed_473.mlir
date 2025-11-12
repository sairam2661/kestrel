"builtin.module"() ({
  "func.func"() <{function_type = (index, index, i1, index) -> (index, index), sym_name = "nested_loops_with_condition"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: i1, %arg3: index):
    %0 = "arith.constant"() <{value = #2}> : () -> index
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (index, index) -> i1
    %2 = "arith.select"(%1, %arg0, %arg1) : (i1, index, index) -> index
    %3 = "arith.addi"(%arg0, %0) : (index, index) -> index
    %4 = "arith.addi"(%arg1, %0) : (index, index) -> index
    %5 = "scf.if"(%arg2) ({
      ^bb0():
        %6 = "scf.for"(%arg3, %3, %4, %arg0) ({
        ^bb0(%arg5: index, %arg6: index):
          %7 = "arith.addi"(%arg6, %0) : (index, index) -> index
          "scf.yield"(%7) : (index) -> ()
        }) : (index, index, index, index) -> index
        "scf.yield"(%6) : (index) -> ()
    }, {
      ^bb0():
        %8 = "scf.for"(%arg3, %4, %3, %arg1) ({
        ^bb0(%arg9: index, %arg10: index):
          %11 = "arith.addi"(%arg10, %0) : (index, index) -> index
          "scf.yield"(%11) : (index) -> ()
        }) : (index, index, index, index) -> index
        "scf.yield"(%8) : (index) -> ()
    }) : (i1) -> index
    "func.return"(%5, %6) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()