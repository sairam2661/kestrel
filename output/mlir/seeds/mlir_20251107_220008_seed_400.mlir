"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "complex_index_ops"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %2 = "arith.addi"(%arg0, %arg1) : (index, index) -> index
    %3 = "arith.cmpi"(%arg0, %arg1, "eq") : (index, index) -> i1
    %4 = "arith.constant"() <{value = 42 : index}> : () -> index
    %5 = "arith.addi"(%4, %2) : (index, index) -> index
    %6 = "scf.if"(%3) ({
    ^bb1:
      %7 = "arith.addi"(%5, %4) : (index, index) -> index
      "scf.yield"(%7) : (index) -> ()
    }) {
    } : (i1) -> (index)
    "func.return"(%6) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "call_complex_index_ops"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 10 : index}> : () -> index
    %1 = "arith.constant"() <{value = 20 : index}> : () -> index
    %2 = "func.call"() <{callee = @complex_index_ops, arguments = [10 : index, 20 : index]}> : () -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()