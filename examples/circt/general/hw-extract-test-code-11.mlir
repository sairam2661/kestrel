"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input in : i1>, parameters = [], sym_name = "PortOrder_6072"}> ({
  ^bb0(%arg2: !seq.clock, %arg3: i1):
    "hw.instance"(%arg2, %arg3) <{argNames = ["clock", "in"], instanceName = "dut", moduleName = @Foo, parameters = [], resultNames = []}> : (!seq.clock, i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : !seq.clock, input in : i1>, parameters = [], sym_name = "Foo"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1):
    %0 = "seq.from_clock"(%arg0) : (!seq.clock) -> i1
    "sv.cover.concurrent"(%0, %arg1) <{event = 0 : i32, label = "cover__hello"}> : (i1, i1) -> ()
    "hw.output"() : () -> ()
  }) {sym_visibility = "private"} : () -> ()
}) : () -> ()

