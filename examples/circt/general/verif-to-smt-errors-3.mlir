"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "multiple_asserting_modules_bmc"}> ({
    %0 = "verif.bmc"() <{bound = 10 : i32, initial_values = [], num_regs = 0 : i32}> ({
      "verif.yield"() : () -> ()
    }, {
      "verif.yield"() : () -> ()
    }, {
    ^bb0(%arg1: i32, %arg2: i1, %arg3: i1):
      "hw.instance"(%arg2) <{argNames = ["x"], instanceName = "", moduleName = @OneAssertion, parameters = [], resultNames = []}> : (i1) -> ()
      "hw.instance"(%arg3) <{argNames = ["x"], instanceName = "", moduleName = @OneAssertion, parameters = [], resultNames = []}> : (i1) -> ()
      %1 = "comb.add"(%arg1, %arg1) : (i32, i32) -> i32
      "verif.yield"(%1) : (i32) -> ()
    }) : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input x : i1>, parameters = [], sym_name = "OneAssertion"}> ({
  ^bb0(%arg0: i1):
    "verif.assert"(%arg0) : (i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

