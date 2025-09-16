"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "side_effect", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> index, sym_name = "one_unused"}> ({
  ^bb0(%arg0: i1):
    %0:2 = "scf.if"(%arg0) ({
      "func.call"() <{callee = @side_effect}> : () -> ()
      %3 = "test.value0"() : () -> index
      %4 = "test.value1"() : () -> index
      "scf.yield"(%3, %4) : (index, index) -> ()
    }, {
      %1 = "test.value2"() : () -> index
      %2 = "test.value3"() : () -> index
      "scf.yield"(%1, %2) : (index, index) -> ()
    }) : (i1) -> (index, index)
    "func.return"(%0#1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

