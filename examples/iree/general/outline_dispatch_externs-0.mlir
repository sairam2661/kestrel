#executable_target_a = #hal.executable.target<"llvm-cpu", "a">
#executable_target_b = #hal.executable.target<"llvm-cpu", "b">
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "extern_dispatch", sym_visibility = "private"}> ({
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (tensor<4xi32>, tensor<8xi32>, i32) -> tensor<8xi32>, sym_name = "dispatchExtern", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<8xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 50 : index}> : () -> index
    %2 = "hal.dispatch.extern"(%0, %1, %arg0, %arg1, %arg2) <{export_name = "main", layout = #pipeline_layout, operandSegmentSizes = array<i32: 2, 3, 0, 0>, target_objects = [[#hal.executable.object<{path = "a.o"}>], [#hal.executable.object<{path = "b.o"}>]], target_ordinals = [100 : index, 200 : index], targets = [#executable_target_a, #executable_target_b], tied_operands = [1 : index]}> ({
    ^bb0(%arg4: !hal.device, %arg5: index, %arg6: index):
      %4:2 = "hal.device.query"(%arg4) <{category = "some", key = "value"}> : (!hal.device) -> (i1, i32)
      %5 = "arith.index_cast"(%4#1) : (i32) -> index
      "hal.return"(%arg5, %arg6, %5) : (index, index, index) -> ()
    }, {
    }, {
    ^bb0(%arg3: !hal.device):
      %3:2 = "hal.device.query"(%arg3) <{category = "some", key = "feature"}> : (!hal.device) -> (i1, i32)
      "hal.return"(%3#0) : (i1) -> ()
    }) : (index, index, tensor<4xi32>, tensor<8xi32>, i32) -> tensor<8xi32>
    "util.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()

