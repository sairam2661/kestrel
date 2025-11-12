#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "binding_ptrs_sub_byte_dynamic"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0, %1) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xi4, strided<[1], offset: ?>>
    %3 = "arith.constant"() <{value = 7 : index}> : () -> index
    %4 = "memref.load"(%2, %3) : (memref<?xi4, strided<[1], offset: ?>>, index) -> i4
    "llvm.call"(%4) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @sink, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i4) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i4)>, linkage = #llvm.linkage<external>, sym_name = "sink", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i4):
    "llvm.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

