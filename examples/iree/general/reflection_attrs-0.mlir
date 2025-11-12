"builtin.module"() ({
  "vm.module"() <{sym_name = "simple_module"}> ({
    "vm.export"() <{export_name = "func", function_ref = @func}> : () -> ()
    "vm.func"() <{function_type = (i32) -> i32}> ({
    ^bb0(%arg0: i32):
      "vm.return"(%arg0) : (i32) -> ()
    }) {iree.reflection = {func_attr_0 = "FUNC_ATTR_0", func_attr_1 = "FUNC_ATTR_1"}, sym_name = "func"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) {iree.reflection = {module_attr_0 = "MODULE_ATTR_0", module_attr_1 = "MODULE_ATTR_1"}} : () -> ()
}) : () -> ()

