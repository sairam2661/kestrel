"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "noramalized_loops_with_shuffled_yielded_iter_args"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 42 : index}> : () -> index
    %4 = "arith.constant"() <{value = 56 : index}> : () -> index
    %5:2 = "scf.for"(%0, %3, %1, %0, %0) ({
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %6:2 = "scf.for"(%0, %4, %1, %arg1, %arg2) ({
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %7:2 = "scf.for"(%0, %2, %1, %arg4, %arg5) ({
        ^bb0(%arg6: index, %arg7: index, %arg8: index):
          "use"(%arg0, %arg3, %arg6) : (index, index, index) -> ()
          "scf.yield"(%arg8, %arg7) : (index, index) -> ()
        }) : (index, index, index, index, index) -> (index, index)
        "scf.yield"(%7#0, %7#1) : (index, index) -> ()
      }) : (index, index, index, index, index) -> (index, index)
      "scf.yield"(%6#0, %6#1) : (index, index) -> ()
    }) : (index, index, index, index, index) -> (index, index)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

