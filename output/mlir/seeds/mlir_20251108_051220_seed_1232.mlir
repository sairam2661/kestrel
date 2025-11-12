"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "complex_index_computation"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.addi"(%arg0, %1) : (index, index) -> index
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") : (index, index) -> i1
    %4 = "scf.if"(%3) <{results = 1 : index}> {
      "scf.yield"  ="#" : () -> index
    }  : (index) -> (index)
    %5 = "arith.addi"(%2, %arg1) : (index, index) -> index
    "scf.if"(%2) {
      "scf.yield"  ="#" : () -> index
    }  : (index) -> ()
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
}) : () -> ()