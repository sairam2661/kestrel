"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> index, sym_name = "cond_prop"}> ({
  ^bb0(%arg0: i1):
    %0 = "scf.if"(%arg0) ({
      %4 = "scf.if"(%arg0) ({
        %6 = "test.get_some_value1"() : () -> index
        "scf.yield"(%6) : (index) -> ()
      }, {
        %5 = "test.get_some_value2"() : () -> index
        "scf.yield"(%5) : (index) -> ()
      }) : (i1) -> index
      "scf.yield"(%4) : (index) -> ()
    }, {
      %1 = "scf.if"(%arg0) ({
        %3 = "test.get_some_value3"() : () -> index
        "scf.yield"(%3) : (index) -> ()
      }, {
        %2 = "test.get_some_value4"() : () -> index
        "scf.yield"(%2) : (index) -> ()
      }) : (i1) -> index
      "scf.yield"(%1) : (index) -> ()
    }) : (i1) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

