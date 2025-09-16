"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "side_effect", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> (), sym_name = "all_unused"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2:2 = "scf.if"(%arg0) ({
      "func.call"() <{callee = @side_effect}> : () -> ()
      "scf.yield"(%0, %1) : (index, index) -> ()
    }, {
      "func.call"() <{callee = @side_effect}> : () -> ()
      "scf.yield"(%0, %1) : (index, index) -> ()
    }) : (i1) -> (index, index)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

