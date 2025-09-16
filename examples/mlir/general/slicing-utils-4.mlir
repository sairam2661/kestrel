"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (index, index), sym_name = "slicing_test_multiple_return"}> ({
  ^bb0(%arg0: index):
    %0:2 = "slicing-test-op"(%arg0, %arg0) : (index, index) -> (index, index)
    "func.return"(%0#0, %0#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

