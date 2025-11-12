"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_control_flow"}> ({
    ^bb0(%arg0: index):
      "scf.if"(%arg0) ({
        ^bb1:
          "scf.for"(%iv0: index) ({
            ^bb2:
              "scf.yield"(%iv0) : (index) -> ()
          }) {"lowerBound" = 0 : index, "upperBound" = 10 : index, "step" = 1 : index} : () -> ()
          "scf.yield"() : () -> ()
      }) {"true" = [], "false" = []} : (index) -> ()
      "scf.yield"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : () -> ()