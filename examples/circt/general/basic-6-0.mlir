"builtin.module"() ({
  "func.func"() <{function_type = (i32, index, f64) -> (), sym_name = "Foo"}> ({
  ^bb0(%arg0: i32, %arg1: index, %arg2: f64):
    "dbg.variable"(%arg0) <{name = "foo"}> : (i32) -> ()
    "dbg.variable"(%arg1) <{name = "bar"}> : (index) -> ()
    "dbg.variable"(%arg2) <{name = "baz"}> : (f64) -> ()
    %0 = "dbg.struct"(%arg0, %arg1, %arg2) <{names = ["foo", "bar", "baz"]}> : (i32, index, f64) -> !dbg.struct
    "dbg.variable"(%0) <{name = "megafoo"}> : (!dbg.struct) -> ()
    %1 = "dbg.array"(%arg1, %arg1) : (index, index) -> !dbg.array
    "dbg.variable"(%1) <{name = "megabar"}> : (!dbg.array) -> ()
    %2 = "dbg.scope"() <{instanceName = "inlined", moduleName = "Bar"}> : () -> !dbg.scope
    "dbg.variable"(%arg0, %2) <{name = "x"}> : (i32, !dbg.scope) -> ()
    %3 = "dbg.scope"(%2) <{instanceName = "y", moduleName = "Baz"}> : (!dbg.scope) -> !dbg.scope
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

