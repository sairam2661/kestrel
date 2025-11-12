#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<uniform_buffer>]>
"builtin.module"() ({
  "pipeline_layout.basic"() {layout0 = #pipeline_layout} : () -> ()
}) : () -> ()

