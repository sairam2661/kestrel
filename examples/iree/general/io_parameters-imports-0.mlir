"builtin.module"() ({
  "vm.module"() <{sym_name = "io_parameters"}> ({
    "vm.import"() <{arg_attrs = [{vm.name = "device"}, {vm.name = "queue_affinity"}, {vm.name = "wait_fence"}, {vm.name = "signal_fence"}, {vm.name = "source_scope"}, {vm.name = "target_queue_affinity"}, {vm.name = "target_memory_type"}, {vm.name = "target_buffer_usage"}, {vm.name = "key_table"}, {vm.name = "key_data"}, {vm.name = "spans"}], function_type = (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.buffer, i64, i32, i32, !vm.buffer, !vm.buffer, !vm.buffer) -> !vm.list<!vm.ref<!hal.buffer>>, sym_name = "load", sym_visibility = "private"}> ({
    }) : () -> ()
    "vm.import"() <{arg_attrs = [{vm.name = "device"}, {vm.name = "queue_affinity"}, {vm.name = "wait_fence"}, {vm.name = "signal_fence"}, {vm.name = "source_scope"}, {vm.name = "target_buffer"}, {vm.name = "key_table"}, {vm.name = "key_data"}, {vm.name = "spans"}], function_type = (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.buffer, !vm.ref<!hal.buffer>, !vm.buffer, !vm.buffer, !vm.buffer) -> (), sym_name = "gather", sym_visibility = "private"}> ({
    }) : () -> ()
    "vm.import"() <{arg_attrs = [{vm.name = "device"}, {vm.name = "queue_affinity"}, {vm.name = "wait_fence"}, {vm.name = "signal_fence"}, {vm.name = "source_buffer"}, {vm.name = "target_scope"}, {vm.name = "key_table"}, {vm.name = "key_data"}, {vm.name = "spans"}], function_type = (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.buffer>, !vm.buffer, !vm.buffer, !vm.buffer, !vm.buffer) -> (), sym_name = "scatter", sym_visibility = "private"}> ({
    }) : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

