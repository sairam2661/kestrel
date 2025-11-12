#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">], flags = Indirect>
"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> (index, index, index), sym_name = "hal_interface_binding_subspan_op", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%arg0, %arg1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<64x?x?xf16>
    %4 = "memref.dim"(%3, %0) : (memref<64x?x?xf16>, index) -> index
    %5 = "memref.dim"(%3, %1) : (memref<64x?x?xf16>, index) -> index
    %6 = "memref.dim"(%3, %2) : (memref<64x?x?xf16>, index) -> index
    "util.return"(%4, %5, %6) : (index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

