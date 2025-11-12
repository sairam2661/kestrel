"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<staging>, index) -> f32, sym_name = "scfFor", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<staging>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %4 = "scf.for"(%0, %2, %1, %3) ({
    ^bb0(%arg2: index, %arg3: f32):
      %5 = "stream.async.load"(%arg0, %arg1, %arg2) : (!stream.resource<staging>, index, index) -> f32
      %6 = "stream.async.store"(%arg0, %arg1, %arg2, %3) : (!stream.resource<staging>, index, index, f32) -> !stream.resource<staging>
      %7 = "arith.addf"(%5, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "scf.yield"(%7) : (f32) -> ()
    }) : (index, index, index, f32) -> f32
    "util.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

