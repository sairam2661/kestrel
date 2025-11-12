"builtin.module"() ({
  "util.func"() <{function_type = (memref<?xi8>) -> memref<?xi8>, sym_name = "callOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: memref<?xi8>):
    %0 = "util.call"(%arg0) <{callee = @extern, tied_operands = [-1 : index]}> : (memref<?xi8>) -> memref<?xi8>
    "util.return"(%0) : (memref<?xi8>) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (memref<?xi8>) -> memref<?xi8>, sym_name = "extern", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) : () -> ()
}) : () -> ()

