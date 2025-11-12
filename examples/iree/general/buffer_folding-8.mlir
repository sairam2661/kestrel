"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index, index, index) -> (memref<?xi8>, index), sym_name = "FoldSubspansIntoStorageOp", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index, %arg3: index):
    %0 = "util.buffer.subspan"(%arg0, %arg1, %arg2, %arg3) : (!util.buffer, index, index, index) -> !util.buffer
    %1:2 = "util.buffer.storage"(%0, %arg3) : (!util.buffer, index) -> (memref<?xi8>, index)
    "util.return"(%1#0, %1#1) : (memref<?xi8>, index) -> ()
  }) : () -> ()
}) : () -> ()

