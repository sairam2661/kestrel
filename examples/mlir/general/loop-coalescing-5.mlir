"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "noramalized_loops_with_yielded_non_iter_args"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 42 : index}> : () -> index
    %4 = "arith.constant"() <{value = 56 : index}> : () -> index
    %5 = "scf.for"(%0, %3, %1, %0) ({
    ^bb0(%arg0: index, %arg1: index):
      %6 = "scf.for"(%0, %4, %1, %arg1) ({
      ^bb0(%arg2: index, %arg3: index):
        %7 = "scf.for"(%0, %2, %1, %arg3) ({
        ^bb0(%arg4: index, %arg5: index):
          %8 = "use"(%arg0, %arg2, %arg4) : (index, index, index) -> index
          "scf.yield"(%8) : (index) -> ()
        }) : (index, index, index, index) -> index
        "scf.yield"(%7) : (index) -> ()
      }) : (index, index, index, index) -> index
      "scf.yield"(%6) : (index) -> ()
    }) : (index, index, index, index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

