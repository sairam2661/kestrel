"builtin.module"() ({
  "flow.executable"() <{sym_name = "workgroup_count_ex_0"}> ({
    "flow.executable.export"() <{function_ref = @workgroup_count_entry_0, sym_name = "workgroup_count_entry_0"}> ({
    ^bb0(%arg7: index):
      "flow.return"(%arg7, %arg7, %arg7) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (tensor<1xi32>) -> tensor<1xi32>, sym_name = "workgroup_count_entry_0"}> ({
      ^bb0(%arg6: tensor<1xi32>):
        "func.return"(%arg6) : (tensor<1xi32>) -> ()
      }) : () -> ()
    }) : () -> ()
    "flow.executable_end"() : () -> ()
  }) : () -> ()
  "flow.executable"() <{sym_name = "workgroup_count_ex_1"}> ({
    "flow.executable.export"() <{function_ref = @workgroup_count_entry_1, sym_name = "workgroup_count_entry_1"}> ({
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      "flow.return"(%arg3, %arg4, %arg5) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (tensor<1xi32>) -> tensor<1xi32>, sym_name = "workgroup_count_entry_1"}> ({
      ^bb0(%arg2: tensor<1xi32>):
        "func.return"(%arg2) : (tensor<1xi32>) -> ()
      }) : () -> ()
    }) : () -> ()
    "flow.executable_end"() : () -> ()
  }) : () -> ()
  "flow.executable"() <{sym_name = "workgroup_count_ex_2"}> ({
    "flow.executable.export"() <{function_ref = @workgroup_count_entry_2, sym_name = "workgroup_count_entry_2"}> ({
    ^bb0(%arg1: index):
      "flow.return"(%arg1, %arg1, %arg1) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (tensor<1xi32>) -> tensor<1xi32>, sym_name = "workgroup_count_entry_2"}> ({
      ^bb0(%arg0: tensor<1xi32>):
        "func.return"(%arg0) : (tensor<1xi32>) -> ()
      }) : () -> ()
    }) : () -> ()
    "flow.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

