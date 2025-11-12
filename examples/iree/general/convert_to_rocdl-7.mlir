"builtin.module"() ({
  "func.func"() <{function_type = (!iree_codegen.null_pointer) -> (), sym_name = "foo", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "null_pointer"}> ({
    %0 = "iree_codegen.null_pointer"() : () -> !iree_codegen.null_pointer
    "func.call"(%0) <{callee = @foo}> : (!iree_codegen.null_pointer) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

