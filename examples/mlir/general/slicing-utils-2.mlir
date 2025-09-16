"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "slicing_test_3"}> ({
    %0 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "slicing-test-op"(%0) : (f32) -> index
    "scf.for"(%1, %1, %1) ({
    ^bb0(%arg0: index):
      %2 = "slicing-test-op"(%1, %arg0) : (index, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

