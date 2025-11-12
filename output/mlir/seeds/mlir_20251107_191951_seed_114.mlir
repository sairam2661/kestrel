"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "nested_loops_with_extreme_params"}> ({
    ^bb0(%arg0: index):
      "scf.for"(%arg0, %arg0, %arg0) <{upper_bound = #arith_constant, step = #arith_constant}> ({
        ^bb1(%iv: index):
          "scf.for"(%iv, %iv, %iv) <{upper_bound = #arith_constant, step = #arith_constant}> ({
            ^bb2(%jv: index):
              %0 = "arith.addi"(%iv, %jv) : (index, index) -> index
              "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
      }) : () -> ()
      "func.return"(%arg0) : (index) -> ()
  }) : () -> ()
}) : () -> ()