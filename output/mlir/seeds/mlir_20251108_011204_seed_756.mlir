"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32, index), sym_name = "complex_flow_with_unexpected_types"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.addi"(%arg0, %0) <{inplace = true}> : (i32, i32) -> i32
    %3 = "scf.if"(%2) ({
    ^bb1:
      %4 = "arith.cmpi"("sgt", %2, %0) <{inplace = true}> : (i32, i32) -> i1
      "scf.yield"(%4) : (i1) -> ()
    ^bb2:
      %5 = "arith.cmpi"("slt", %2, %0) <{inplace = true}> : (i32, i32) -> i1
      "scf.yield"(%5) : (i1) -> ()
    }) : (i1) -> i1
    "scf.yield"(%2, %1) : (i32, index) -> ()
  }) : () -> (i32, index)
}) : () -> ()