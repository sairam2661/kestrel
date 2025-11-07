"builtin.module"() ({
  "handshake.func"() <{function_type = (index, index, index) -> (index, index)}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0:2 = "handshake.control_merge"(%arg0, %arg1, %arg2) : (index, index, index) -> (index, index)
    "handshake.return"(%0#0, %0#1) : (index, index) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0", "out1"], sym_name = "test_cmerge_data"} : () -> ()
}) : () -> ()

