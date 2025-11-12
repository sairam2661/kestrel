"builtin.module"() ({
  "func.func"() <{function_type = (memref<32x32xi32>, index) -> memref<32x32xi32>, sym_name = "process_matrix"}> ({
  ^bb0(%arg0: memref<32x32xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
    "scf.if"(%1) ({
    ^bb0:
      %2 = "arith.cmpi"("slt", %arg1, %0) : (index, index) -> i1
      "scf.yield"(%2) : (i1) -> ()
    }) {
    }  : (i1) -> ()
    "func.return"(%arg0) : (memref<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()