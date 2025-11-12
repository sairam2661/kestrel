"builtin.module"() ({
  "func.func"() <{
    function_type = (memref<10x10x10xi32>, index, index) -> (),
    sym_name = "multi_loop_func"
  }> ({
    ^bb0(%arg0: memref<10x10x10xi32>, %arg1: index, %arg2: index):
      %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %c1 = "arith.constant"() <{value = 10 : index}> : () -> index
      "scf.for"(%c0, %c1, %arg1) ({
        ^bb1(%arg3: index):
          %c2 = "arith.constant"() <{value = 5 : index}> : () -> index
          "scf.for"(%c0, %c1, %arg2) ({
            ^bb2(%arg4: index):
              %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
              %0 = "arith.addi"(%arg3, %c2) <{overflowFlags = #arith_overflow_signed}> : (index, index) -> index
              %1 = "arith.addi"(%arg4, %c3) <{overflowFlags = #arith_overflow_signed}> : (index, index) -> index
              %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_signed}> : (index, index) -> index
              "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()