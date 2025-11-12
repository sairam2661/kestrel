"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index) -> (memref<?xi8>, index), sym_name = "buffer_storage", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0:2 = "util.buffer.storage"(%arg0, %arg1) : (!util.buffer, index) -> (memref<?xi8>, index)
    "util.return"(%0#0, %0#1) : (memref<?xi8>, index) -> ()
  }) : () -> ()
}) : () -> ()

