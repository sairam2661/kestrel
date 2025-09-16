"builtin.module"() ({
  "test.dataflow_mismatch"() ({
    %1:2 = "test.producer"() : () -> (i32, i32)
    "test.consumer"(%1#0, %1#1) : (i32, i32) -> ()
  }) : () -> ()
  "test.dataflow_mismatch"() ({
    %0:2 = "test.producer"() : () -> (i32, i32)
    "test.consumer"(%0#1, %0#0) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

