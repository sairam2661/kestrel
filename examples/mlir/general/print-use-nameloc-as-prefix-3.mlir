"builtin.module"() ({
  "func.func"() <{function_type = () -> (index, index), sym_name = "make_two_results", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> (), sym_name = "test_multiple_results"}> ({
  ^bb0(%arg0: i1):
    %0:2 = "func.call"() <{callee = @make_two_results}> : () -> (index, index)
    %1:2 = "func.call"() <{callee = @make_two_results}> : () -> (index, index)
    %2:2 = "scf.while"(%1#0, %1#0) ({
    ^bb0(%arg3: index, %arg4: index):
      %4 = "arith.cmpi"(%arg3, %arg4) <{predicate = 2 : i64}> : (index, index) -> i1
      "scf.condition"(%4, %arg3, %arg4) : (i1, index, index) -> ()
    }, {
    ^bb0(%arg1: index, %arg2: index):
      %3:2 = "func.call"() <{callee = @make_two_results}> : () -> (index, index)
      "scf.yield"(%3#1, %3#1) : (index, index) -> ()
    }) : (index, index) -> (index, index)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

