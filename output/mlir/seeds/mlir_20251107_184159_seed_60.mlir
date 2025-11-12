"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index), sym_name = "complex_loop"}> ({
    ^bb0(%arg0: index, %arg1: index):
      %0 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"() <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
        ^bb1(%iv: index):
          %1 = "arith.addi"(%iv, %0) : (index, index) -> index
          "scf.if"() <{condition = true}> ({
            ^bb2:
              %2 = "arith.cmpi"("eq", %iv, %0) : (i32, index, index) -> i1
              "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.if"() <{condition = true}> ({
        ^bb3:
          %3 = "arith.cmpi"("ne", %arg0, %arg1) : (i32, index, index) -> i1
          "scf.yield"() : () -> ()
      }) : () -> ()
      "func.return"(%arg0) : (index) -> ()
  }) : () -> ()
}) : () -> ()