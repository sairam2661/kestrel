#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/hw-eliminate-inout-ports-named-0.mlir":2:37)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<inout rd : i42, output out : i42>, parameters = [], result_locs = [#loc], sym_name = "read"}> ({
  ^bb0(%arg1: !hw.inout<i42>):
    %3 = "sv.read_inout"(%arg1) : (!hw.inout<i42>) -> i42
    "hw.output"(%3) : (i42) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<inout wr : i42>, parameters = [], sym_name = "write"}> ({
  ^bb0(%arg0: !hw.inout<i42>):
    %2 = "hw.constant"() <{value = 0 : i42}> : () -> i42
    "sv.assign"(%arg0, %2) : (!hw.inout<i42>, i42) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "oneLevel"}> ({
    %0 = "sv.wire"() <{name = ""}> : () -> !hw.inout<i42>
    %1 = "hw.instance"(%0) <{argNames = ["rd"], instanceName = "read", moduleName = @read, parameters = [], resultNames = ["out"]}> : (!hw.inout<i42>) -> i42
    "hw.instance"(%0) <{argNames = ["wr"], instanceName = "write", moduleName = @write, parameters = [], resultNames = []}> : (!hw.inout<i42>) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

