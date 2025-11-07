"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "CallInGraphRegion"}> ({
    "func.call"() <{callee = @foo}> : () -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "foo"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

