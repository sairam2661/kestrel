"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "side_effect", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i1, i1) -> index, sym_name = "nested_unused"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0:2 = "scf.if"(%arg0) ({
      %3:2 = "scf.if"(%arg1) ({
        "func.call"() <{callee = @side_effect}> : () -> ()
        %6 = "test.value0"() : () -> index
        %7 = "test.value1"() : () -> index
        "scf.yield"(%6, %7) : (index, index) -> ()
      }, {
        %4 = "test.value2"() : () -> index
        %5 = "test.value3"() : () -> index
        "scf.yield"(%4, %5) : (index, index) -> ()
      }) : (i1) -> (index, index)
      "scf.yield"(%3#0, %3#1) : (index, index) -> ()
    }, {
      %1 = "test.value0_2"() : () -> index
      %2 = "test.value1_2"() : () -> index
      "scf.yield"(%1, %2) : (index, index) -> ()
    }) : (i1) -> (index, index)
    "func.return"(%0#1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

