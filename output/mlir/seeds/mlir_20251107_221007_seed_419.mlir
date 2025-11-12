"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "unique_op_sequence"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (index, index) -> i1
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.if"(%0) ({
    ^bb0:
      %4 = "arith.addi"(%arg0, %arg1) : (index, index) -> index
      "scf.yield"(%4) : (index) -> ()
    }) {
    } : (i1) -> (index)
    %5 = "scf.if"(%0) ({
    ^bb0:
      %6 = "arith.subi"(%arg0, %arg1) : (index, index) -> index
      "scf.yield"(%6) : (index) -> ()
    }) {
    } : (i1) -> (index)
    "func.return"(%3, %5) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()