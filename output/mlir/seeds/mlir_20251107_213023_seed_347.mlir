"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "complex_loop_and_branch"}> ({
    ^bb0(%arg0: index):
      %0 = "arith.constant"() <{value = 5 : index}> : () -> index
      "scf.if"(%arg0) <{sym_name = "loop_condition"}> ({
        ^bb1(%if_arg0: index):
          "scf.for"() <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index, sym_name = "inner_loop"}> ({
            ^bb2(%iv: index):
              %1 = "arith.addi"(%iv, %if_arg0) <{overflowFlags = #arith_overflowFlagsSigned}> : (index, index) -> index
              "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
      }, {
        ^bb3(%else_arg0: index):
          %2 = "arith.cmpi"("slt", %else_arg0, %0) : (index, index) -> i1
          "scf.yield"() : () -> ()
      }) : (i1) -> ()
      %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlagsSigned}> : (index, index) -> index
      "func.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()