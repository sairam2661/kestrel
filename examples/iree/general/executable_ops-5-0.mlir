"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> !hal.executable, sym_name = "executableLoad", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "hal_loader.executable.load"(%arg0) <{format = "executable_format"}> : (!util.buffer) -> !hal.executable
    "util.return"(%0) : (!hal.executable) -> ()
  }) : () -> ()
}) : () -> ()

