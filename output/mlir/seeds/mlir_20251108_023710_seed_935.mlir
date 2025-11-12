"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "complex_loop"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %0:2 = "scf.for"(%arg0, %c0, %c3, %c0, %c0) ({
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %1:2 = "scf.for"(%arg2, %c1, %c2, %c0, %c0) ({
      ^bb0(%arg5: index, %arg6: index, %arg7: index):
        %2:2 = "scf.for"(%arg5, %c2, %c4, %c0, %c0) ({
        ^bb0(%arg8: index, %arg9: index, %arg10: index):
          %3 = "arith.addi"(%arg9, %c5) : (index, index) -> index
          "scf.yield"(%arg8, %3) : (index, index) -> ()
        }) : (index, index, index) -> (index, index)
        "scf.yield"(%arg5, %arg9) : (index, index) -> ()
      }) : (index, index, index) -> (index, index)
      "scf.yield"(%arg2, %arg9) : (index, index) -> ()
    }) : (index, index, index) -> (index, index)
    "func.return"(%0#1) : (index) -> ()
  }) : () -> ()
}) : () -> ()