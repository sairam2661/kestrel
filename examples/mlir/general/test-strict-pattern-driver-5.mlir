"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_remove_graph_region"}> ({
    "test.erase_op"() ({
      "test.graph_region"() ({
        %0 = "test.foo_a"(%1) : (i1) -> i1
        %1 = "test.foo_b"(%0) : (i1) -> i1
      }) : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

